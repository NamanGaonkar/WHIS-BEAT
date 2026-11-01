self:
{ pkgs, lib, ... }:
{
  imports = [ ./hm/whis-beats.nix ];
  programs.whis-beats.package = lib.mkDefault self.packages.${pkgs.stdenv.hostPlatform.system}.default;
}
