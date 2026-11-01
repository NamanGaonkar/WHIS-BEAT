# whis-beats

A native music streaming client, built with Rust and [GPUI](https://github.com/zed-industries/zed)
(Zed's UI framework). Cargo workspace, edition 2024, resolver 3.

## Crate layout

```
crates/
  sonora/     binary: main, window, actions, asset registry, HTTP client shim, tray, dock
  views/      screens, shells (Workspace, FullscreenView) and app chrome
  state/      GPUI entities holding app state, and all async orchestration
  music/      provider traits and models in the root, one submodule per provider (no GPUI)
  storage/    the state.sqlite and cache.sqlite paths, schema and connection setup
  ui/         design system: theme, metrics, layout ladder and reusable elements
  router/     Destination enum, navigation history, Link trait
  input/      text input element, global actions and keybindings
  i18n/       Fluent localization: the `t!` macro, locale selection, embedded .ftl
  icons/      the icon packs: registry, active pack, path resolution, AssetSource
  embed/      build-script helper that walks a folder and writes include_bytes! literals
  webview/    a native browser window over a throwaway session, for cookie sign-ins and PO tokens
  widevine/   the Widevine CDM host, pssh and CENC fMP4 parsing, for any DRM'd provider
```

Dependency direction is strict. Do not create a back edge:

```
whis-beats → views → state → music
             state, music → storage
             state → webview
             music → widevine
             all ui-side crates → ui, router, input → ui → gpui
             every ui-side crate → i18n, icons → gpui
```

- `state` and `views` see only the traits and models in the root of `music`, never a provider
  module.
- `music` never depends on `gpui`. `ui` never knows about `music`, `state` or playback. Widgets
  that need app state live in `views/src/chrome/`.
- `music::engine` is the one playback engine and `music::stream` the one progressive download.
- `music::drm` is the only way `state` and `views` reach protected playback. The CDM is never
  shipped in any artefact or package.

## Commands

```sh
cargo run --release            # run WHIS BEATS
cargo test --workspace         # run tests
cargo fmt                      # format code
```
