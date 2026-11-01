# Changelog

All notable changes to WHIS BEATS are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project
adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [Unreleased]

### Added

- An artist page shows the artist's banner behind its header, sharp at the top and blurring into
  the page under the name. Artists without a banner get a soft wash of their photo's colours.
- Local songs read word-by-word lyrics from a `.ttml` file beside them or from TTML in their
  lyrics tag.

### Changed

- The tray menu and taskbar buttons follow the song of the Jam or device you are listening to.
- A song's right-click menu groups Artist, Album, Radio and Details under one Go to submenu.
- Sorting by Date added puts the songs you added most recently first.

### Fixed

- The header of an album, playlist or artist page no longer jumps when it finishes loading.
- The column header of an artist's popular songs no longer leaves a thin gap above it while scrolling.
- Resuming after a pause no longer plays a blip of the old position first after a seek or a reload.
- A `spotify://track/…` link opens that song, as `spotify:track:…` links already did.
- The system media controls show the length of every song, not 0 for songs whose length only
  arrives once they start playing.
- Dragging the volume slider no longer stutters or spikes CPU and GPU use.
- Leaving a Jam you joined works again.
- Songs you queue in a Jam show your name as the one who added them.
- A Jam's queue is no longer cleared when a song starts playing.

## [0.46.0] - 2026-10-31

### Added

- Control WHIS BEATS from a terminal or a script: `whis-beats toggle`, `next`, `current`, `search`,
  `play -s <song>` and more, listed by `whis-beats --help`.
- `whis-beats seek` takes a time such as `1:30`, or a step such as `+10` or `-10`, besides a percent.
- Drop a song onto a playlist you own or collaborate on in the sidebar to add it to that playlist.
- Hold Shift while dropping a song onto a sidebar playlist to move it out of its playlist or your
  favorites.
- Import an M3U or M3U8 playlist from the button or right-click menu on your local Playlists
  page, and export a local playlist from its right-click menu. Songs outside your library are
  left out, and an export saved beside your music lists it by relative path.
- `whis-beats watch` prints what plays on every change, one line of JSON each, for status bars.
- `whis-beats current` also says which provider plays, whether the song is liked and what it plays from.
- Rebranded to WHIS BEATS with new logo, modern design, updated assets, and dedicated installer.
