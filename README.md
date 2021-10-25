# balena-rpiplay

Turn a Raspberry Pi into an Airplay server using [RPiPlay](https://github.com/FD-/RPiPlay) to enable screen mirroring on tvs, monitors and projectors.

This project essentially creates a docker image wrapping RPiPlay and making it easily deployable to balena fleets.

Note:

- Currently, the image does not include the gstreamer renderer
- This project aims to build a very minimal image. The binary has been [dockerized](https://github.com/larsks/dockerize) and it is based on busybox. The image size is ~14 MB.


## Setup and Deployment

1. You can simply join the [balenaHub openFleet](https://hub.balena.io/gh_rahul_thakoor/balena-rpiplay). 
     - You don't need to signup for a balenaCloud account 
     - Your device will keep running the latest releases
     - No control over configurations

2. If you want to manage your own device and fleet, you can run this app is as simple as deploying it to a [balenaCloud](https://www.balena.io/cloud) fleet. 
     - You need to signup for a balenaCloud account
     - You manage your fleet and releases
     - You have total control over configurations

    You can do it in just one click by using the button below:

    [![balena deploy button](https://www.balena.io/deploy.svg)](https://dashboard.balena-cloud.com/deploy?repoUrl=https://github.com/rahul-thakoor/balena-rpiplay)




## Configuration

The following [Device Variables](https://www.balena.io/docs/learn/manage/variables/#variables) might be required for proper scaling and resolutions:

|  Name | Supported Values  | Default  | Description
|---|---|--- |---
|  AIRPIPLAY_NAME |  Text |  Air-Pi-Play@`<hostname>` |  Specify the network name of the AirPlay server
|  AIRPIPLAY_AUDIO_OUT |`hdmi` or `analog` or `off`  | `hdmi` | Set audio output device
| AIRPIPLAY_BACKGROUND  | `on` or `auto` or `off`  |  `auto`  | Show black background always, only during active connection, or never |
AIRPIPLAY_LATENCY_MODE | `1` or `0` | `1` |  Enables low-latency mode. Low-latency mode reduces latency by effectively rendering audio and video frames as soon as they are received, ignoring the associated timestamps. As a side effect, playback will be choppy and audio-video sync will be noticably off |
AIRPIPLAY_ROTATION | `90` or `180` or `270` | not set | Specify image rotation in multiples of 90 degrees |
AIRPIPLAY_FLIP | `horiz` or `vert` or `both` | not set | Specify image flipping

## Attribution

- [RpiPlay](https://github.com/FD-/RPiPlay)
- [Dockerize](https://github.com/larsks/dockerize)
