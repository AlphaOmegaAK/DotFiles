#!/bin/bash

## Written by DevArt

# Usage :
# Intended use for this short script is to either use an alias for it to switch
# sinks from the command line or use it in a polybar module

# How to setup :
# 1. Find the desired sinks by running command : pactl list short sinks
# 2. Fill the names of the sinks into variables
# 3. Run script, create an alias, add to path (prob wanna rename), or use in another program to execute

SPEAKERS="alsa_output.pci-0000_03_00.1.hdmi-stereo"
HEADPHONES="alsa_output.usb-SteelSeries_Arctis_7P_-00.analog-stereo"

RUNNING="RUNNING"

SPEAKERS_A="$(pactl list short sinks | grep $SPEAKERS | cut -f 5)"
HEADPHONES_B="$(pactl list short sinks | grep $HEADPHONES | cut -f 5)"


if [ "$SPEAKERS_A" == "$RUNNING" ]; then
	pactl set-default-sink "$HEADPHONES"
	notify-send -u normal "Switched to Arctis Headphones"
	exit 0
else
	pactl set-default-sink "$SPEAKERS"
	notify-send -u normal "Switched to System Speakers"
	exit 0
fi
