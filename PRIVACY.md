# Privacy Policy

WHIS BEATS does not require an account and does not operate a service that stores users' music libraries, listening history, streaming credentials, or personal profiles.

## Installation count

WHIS BEATS sends an optional one-time installation report to our installation counter in order to estimate how many installations of the application have occurred.

The report only contains:

- application version
- operating system

WHIS BEATS does not assign an installation identifier, device identifier, streaming account identifier, listening history, music library information, or other application data in this request.

The installation report is enabled by default. Users may opt out at their discretion. Opting out does not affect WHIS BEATS's functionality.

As the case with any network request, hosting and network infrastructure (Cloudflare) may process standard connection metadata such as an IP address as necessary to deliver the request. WHIS BEATS does not include the IP address in the telemetry payload or use it as an application identifier.

## Streaming and third-party services

When you use Spotify, Apple Music, YouTube Music, Deezer, Tidal, lyrics providers, or other online integrations, WHIS BEATS communicates with those third-party services as necessary to provide the requested functionality.

Data handled by those services is subject to their respective privacy policies and terms.

## Spotify Connect

When a Spotify account is signed in, WHIS BEATS shows up as a Spotify Connect device by default, so Spotify's apps can see what it plays and control it. To do this, WHIS BEATS sends Spotify a device name and a device identifier.

With the default naming, the device name contains the computer's hostname, as in "WHIS BEATS (my-laptop)". Every device signed in to the same Spotify account shows this name in its device list. The name can be changed to "WHIS BEATS" alone or to a custom name, and Spotify Connect can be turned off, in the settings.

The device identifier is created once and kept on the device, so Spotify sees the same identifier every time WHIS BEATS starts. Starting, joining or managing a Jam sends this identifier to Spotify too.

## Shared links

Opening a spotify.link or Deezer short link (link.deezer.com, deezer.page.link or dzr.page.link) makes WHIS BEATS fetch that link from its host to find out where it points. The host receives the request like it would from a web browser.

## Discord rich presence

Discord rich presence is off by default. When it is turned on and Discord is running on the same computer, WHIS BEATS sends Discord the title, artist and album of the playing track, a link to its cover, and when it started. Discord shows this on the user's profile. By default the status also carries a button linking to the track on its provider. The settings can hide the track details, so the status only says that music is playing.

When the track's provider has no public cover, or the track is a local file, WHIS BEATS searches Deezer's public catalog for one by the track's artist and album, or its title when it has no album, and sends that cover to Discord instead. For local files this search can be turned off in the settings.

## Scrobbling

Scrobbling is off until an account is linked in the settings. WHIS BEATS can scrobble to Last.fm, Libre.fm, ListenBrainz and a self-hosted Maloja server. A linked service receives the artist, title, album and length of each track played long enough to count, and when it was played. Last.fm, Libre.fm and ListenBrainz are also told which track is playing right now.

The keys and session tokens that link these accounts are stored in WHIS BEATS's `settings.json`, which on Linux and macOS only the user can read.

## Authentication credentials

Authentication credentials used by WHIS BEATS are stored locally on the user's device.

WHIS BEATS does not transmit Spotify, Apple Music, YouTube Music, Deezer, Tidal, or other provider credentials to WHIS BEATS-operated servers.

Credentials are sent only to the relevant third-party service when required for authentication or API requests.

## Local data

WHIS BEATS stores application data locally on the user's device, including settings, playback state, provider credentials, local-library information, and other application state required for the application to function correctly.

By default, WHIS BEATS keeps the tracks you play on disk, so playing them again downloads nothing. This cache takes up to 2 GB, which can be changed in the settings, and Spotify keeps up to 1 GB more of its own files. Tracks you download are kept until you remove them. Played and downloaded tracks are encrypted with a key held in the operating system's keychain, or in a key file only the user can read when no keychain is available. Spotify's files stay encrypted under Spotify's own key. Turning off "Keep played tracks" deletes the played tracks and leaves downloads alone.

## Logs

WHIS BEATS may write diagnostic logs locally on the user's device.

These logs are not uploaded to WHIS BEATS-operated servers.

Users may choose to share logs manually when reporting bugs or requesting support.

## Changes to this policy

Material changes to this privacy policy will be published in the WHIS BEATS source repository.

## Contact

Privacy-related questions may be submitted through the WHIS BEATS GitHub repository:

https://github.com/whis-beatshq/whis-beats
