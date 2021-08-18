# Air-Pi-Play

Turn a Raspberry Pi into an Airplay server to enable screen mirroring on tvs, monitors and projectors.


## Setup and Deployment

Running this app is as simple as deploying it to a balenaCloud fleet. You can do it in just one click by using the button below:

[![balena deploy button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/rahul-thakoor/air-pi-play)


## Configuration

The following [Device Variables](https://www.balena.io/docs/learn/manage/variables/#variables) might be required for proper scaling and resolutions:

|  Name | Supported Values  | Default  | Description
|---|---|--- |---
|  AIRPIPLAY_NAME |  Text |  Air-Pi-Play@`<hostname>` |  Specify the network name of the AirPlay server
|  AIRPIPLAY_AUDIO_OUT |`hdmi` or `analog` or `off`  | `hdmi` | Set audio output device
| AIRPIPLAY_BACKGROUND  | `on` or `auto` or `off`  |  `auto`  | Show black background always, only during active connection, or never |
AIRPIPLAY_LATENCY_MODE | `-l` | not set |  Enables low-latency mode. Low-latency mode reduces latency by effectively rendering audio and video frames as soon as they are received, ignoring the associated timestamps. As a side effect, playback will be choppy and audio-video sync will be noticably off |
AIRPIPLAY_ROTATION | `90` or `180` or `270` | not set | Specify image rotation in multiples of 90 degrees |
AIRPIPLAY_FLIP | `horiz` or `vert` or `both` | not set | Specify image flipping

## Attribution

This app would not be possible without [RpiPlay](https://github.com/FD-/RPiPlay).