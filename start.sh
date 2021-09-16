#!/bin/sh

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/vc/lib

DEVICE_NAME="${AIRPIPLAY_NAME:="Air-Pi-Play@$HOSTNAME"}"
AUDIO_OUT="${AIRPIPLAY_AUDIO_OUT:="hdmi"}"
BACKGROUND="${AIRPIPLAY_BACKGROUND:="auto"}"
if $AIRPIPLAY_LATENCY_MODE -eq 1 ; then LATENCY="-l"; else LATENCY=""; fi
ROTATION="-r ${AIRPIPLAY_ROTATION:=""}"
FLIP="-f ${AIRPIPLAY_FLIP:=""}"

echo "Air-Pi-Play v$(cat VERSION) powered by RpiPlay"

echo "Device is discoverable as ${DEVICE_NAME}"

rpiplay -n $DEVICE_NAME -a $AUDIO_OUT -b $BACKGROUND $LATENCY $ROTATION $FLIP
