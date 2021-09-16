#!/bin/bash

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/vc/lib

DEVICE_NAME="${AIRPIPLAY_NAME:="Air-Pi-Play@$HOSTNAME"}"
AUDIO_OUT="${AIRPIPLAY_AUDIO_OUT:="hdmi"}"
BACKGROUND="${AIRPIPLAY_BACKGROUND:="auto"}"
case $AIRPIPLAY_LATENCY_MODE in
  1) LATENCY="-l";;
  0) LATENCY="";;
esac
ROTATION="-r ${AIRPIPLAY_ROTATION:=""}"
FLIP="-f ${AIRPIPLAY_FLIP:=""}"

echo "Air-Pi-Play v$(cat VERSION) powered by RpiPlay"

echo "Device is discoverable as ${DEVICE_NAME}"

rpiplay -n $DEVICE_NAME -a $AUDIO_OUT -b $BACKGROUND $LATENCY $ROTATION $FLIP
