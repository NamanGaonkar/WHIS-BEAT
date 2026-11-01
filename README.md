<div align="center">

<img src="./logo.png" alt="WHIS BEATS Logo" width="100" height="100" style="border-radius: 20px;">

# WHIS BEATS

### The Ultimate Native Music Streaming & Local Playback Client, Built with Rust and GPUI

Stream from your favorite services and play local files — all in one blazingly fast **native** desktop app.

[![License](https://img.shields.io/badge/license-GPL--3.0-blue.svg)](./COPYING)
[![Developer](https://img.shields.io/badge/developer-Naman%20Gaonkar-black?logo=github)](https://github.com/NamanGaonkar)
[![Release](https://img.shields.io/github/v/release/NamanGaonkar/WHIS-BEAT?color=orange)](https://github.com/NamanGaonkar/WHIS-BEAT/releases)

</div>

<div align="center">
    <table>
      <tr>
        <td colspan="2">
          <img width="1613" height="981" alt="WHIS BEATS Interface" src="https://github.com/user-attachments/assets/7952a912-7fbc-4186-b467-a08dd7e71e22" />
        </td>
      </tr>
      <tr>
        <td width="50%">
          <img width="1623" height="987" alt="WHIS BEATS Player" src="https://github.com/user-attachments/assets/580bf9d6-db85-4fde-b599-82ba2a28cc51" />
        </td>
        <td width="50%">
          <img width="1623" height="987" alt="WHIS BEATS Lyrics & Visualizer" src="https://github.com/user-attachments/assets/64fcd709-5917-432c-a418-2e07527343d2" />
        </td>
      </tr>
    </table>
</div>

<div align="center">
    <sub>
      Adaptive themes are optional. Everything is customizable.
    </sub>
</div>

> [!IMPORTANT]
> **WHIS BEATS is not a piracy tool.**
>
> WHIS BEATS is not a platform for obtaining or sharing copyrighted material. We will not implement any functions that can be used to export decrypted streams, DRM licenses, content keys, or to convert protected streams into media files.
>
> WHIS BEATS is not designed to circumvent subscriptions or other restrictions put in place by music streaming platforms. If the service demands that you have a valid subscription in order to play back their tracks, so will WHIS BEATS.
>
> Features aimed at ripping, downloading, distributing, or gaining access to protected streaming content are out of scope for the project.

## Features

- **Apple Music, Spotify, YouTube Music, Deezer, Tidal, Subsonic/Navidrome** and local audio library playback
- Gapless playback, audio normalization, shuffle, sleep timer
- Synced/karaoke lyrics, background vocals, and romanization
- Scrobbling with LastFM, ListenBrainz, LibreFM, and Maloja
- Themes, fonts, icons, transparency, blur, and window styling
- Discord Rich Presence, native file opening
- Windows, macOS, Linux, and FreeBSD support
- Powerful CLI control integration

## Installation & Releases

Download the latest version from our [Releases page](https://github.com/NamanGaonkar/WHIS-BEAT/releases).

### Windows

Download the latest release executable or installer from [Releases](https://github.com/NamanGaonkar/WHIS-BEAT/releases).

### Building From Source

Prerequisites:
- [Rust toolchain](https://rustup.rs/) (stable, 1.80+)
- C/C++ build tools (MSVC on Windows, Xcode on macOS, build-essential on Linux)

```sh
# Clone the repository
git clone https://github.com/NamanGaonkar/WHIS-BEAT.git
cd WHIS-BEAT

# Build the release binary
cargo build --release

# Run WHIS BEATS
cargo run --release
```

## CLI Usage

WHIS BEATS includes a built-in CLI to control the running app from your terminal or scripts:

```sh
# Control playback
whis-beats toggle
whis-beats next
whis-beats prev

# Current song info
whis-beats current

# Search and queue
whis-beats search "song name"
whis-beats add <file|link>
```

## Translations

<!-- i18n:start -->

| Language | Translated | Coverage |
| --- | --- | --- |
| English (`en-US`) | 1123/1123 | 100% |
| Deutsch (`de`) | 1123/1123 | 100% |
| Español (`es`) | 1123/1123 | 100% |
| Français (`fr`) | 1123/1123 | 100% |
| Italiano (`it`) | 1123/1123 | 100% |
| Bahasa Indonesia (`id`) | 1123/1123 | 100% |
| 日本語 (`ja`) | 1123/1123 | 100% |
| Русский (`ru`) | 1123/1123 | 100% |
| Українська (`uk`) | 1123/1123 | 100% |
| Polski (`pl`) | 1123/1123 | 100% |
| Čeština (`cs`) | 1123/1123 | 100% |
| Português (Brasil) (`pt-BR`) | 1123/1123 | 100% |
| 简体中文 (`zh-CN`) | 1123/1123 | 100% |
| Türkçe (`tr`) | 1123/1123 | 100% |
| Shqip (`sq`) | 1123/1123 | 100% |

<!-- i18n:end -->

## Maintainer & Author

- **Lead Maintainer:** [Naman Gaonkar](https://github.com/NamanGaonkar) ([Portfolio](https://naman-gaonkar.vercel.app/))

<a href="https://github.com/NamanGaonkar">
  <img src="https://avatars.githubusercontent.com/u/185241591?v=4" width="80" height="80" style="border-radius: 50%;" alt="Naman Gaonkar" />
</a>

## Credits

WHIS BEATS is built with the help of incredible open-source projects, including:

- [Zed](https://github.com/zed-industries/zed) — provides `gpui`, the native GPU-accelerated Rust rendering framework.
- [librespot](https://github.com/librespot-org/librespot) — Spotify playback and library integration.
- [yt-dlp](https://github.com/yt-dlp/yt-dlp) — YouTube integration.

## License

Copyright (C) 2026 WHIS BEATS Contributors & Naman Gaonkar.

WHIS BEATS is free software, released under the [GNU General Public License version 3 or later](COPYING).

WHIS BEATS is an unofficial client and is not affiliated with, endorsed by, or sponsored by Spotify AB or Apple Inc.
