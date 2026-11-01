{
  config,
  lib,
  pkgs,
  ...
}:
let
  cfg = config.programs.whis-beats;
  json = pkgs.formats.json { };
  generated = json.generate "whis-beats-settings.json" ({ version = 1; } // cfg.settings);
  apply = pkgs.writeShellApplication {
    name = "whis-beats-apply-settings";
    runtimeInputs = [ pkgs.jq ];
    text = ''
      generated=$1
      dest="''${XDG_CONFIG_HOME:-$HOME/.config}/whis-beats/settings.json"
      mkdir -p "$(dirname "$dest")"
      if [[ -f "$dest" ]]; then
        jq --indent 2 -s '.[0] * .[1]' "$dest" "$generated" > "$dest.tmp"
        mv "$dest.tmp" "$dest"
      else
        cp "$generated" "$dest"
      fi
    '';
  };
  merge = "${lib.getExe apply} ${generated}";
  alsaPluginDir = pkgs.symlinkJoin {
    name = "whis-beats-alsa-plugins";
    paths = [
      "${pkgs.pipewire}/lib/alsa-lib"
      "${pkgs.alsa-plugins}/lib/alsa-lib"
    ];
  };
  package = pkgs.symlinkJoin {
    name = "whis-beats";
    paths = [ cfg.package ];
    nativeBuildInputs = [ pkgs.makeWrapper ];
    postBuild = ''
      rm -f $out/bin/whis-beats
      makeWrapper ${lib.getExe cfg.package} $out/bin/whis-beats \
        --set ALSA_PLUGIN_DIR ${alsaPluginDir} \
        ${lib.optionalString (cfg.settings != { }) "--run ${lib.escapeShellArg merge}"}
    '';
  };
in
{
  options.programs.whis-beats = {
    enable = lib.mkEnableOption "WHIS BEATS, a native music streaming client";

    package = lib.mkOption {
      type = lib.types.package;
    };

    settings = lib.mkOption {
      type = json.type;
      default = { };
      example = {
        provider = "youtube";
        gapless = true;
        appearance = {
          theme = "dark";
          icons = "solar";
        };
      };
      description = ''
        Configuration written to {file}`$XDG_CONFIG_HOME/whis-beats/settings.json`.
        Same JSON keys as the app. Set keys are merged on switch and again each
        launch; omitted keys, including resume and window bounds, are kept.
      '';
    };
  };

  config = lib.mkIf cfg.enable {
    home.packages = [ package ];

    # write nix keys on switch; the wrapper merges them again on each launch
    home.activation.whis-beatsSettings = lib.mkIf (cfg.settings != { }) (
      lib.hm.dag.entryAfter [ "writeBoundary" ] ''
        $DRY_RUN_CMD ${merge}
      ''
    );
  };
}
