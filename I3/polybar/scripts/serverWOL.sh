#!/bin/bash

ARR=()
ARR+=("Status")
ARR+=("Underworld")
ARR+=("NASty")
ARR+=("Olympia")
ARR+=("Expanse")
ARR+=("Valkyrie")

CHOICE=$(printf '%s\n' "${ARR[@]}" | rofi -dmenu -config ~/.config/rofi/config.rasi -p "Servers WoL Menu")


if [ "$CHOICE" =  "Status" ]; then
	notify-send -u normal "Status"
	exit 0
fi

if [ "$CHOICE" =  "Underworld" ]; then
	notify-send -u normal "Underworld"
	exit 0
fi

if [ "$CHOICE" =  "NASty" ]; then
	notify-send -u normal "NASty"
	exit 0
fi

if [ "$CHOICE" =  "Olympia" ]; then
	notify-send -u normal "Olympia"
	exit 0
fi

if [ "$CHOICE" =  "Expanse" ]; then
	notify-send -u normal "Expanse"
	exit 0
fi

if [ "$CHOICE" =  "Valkyrie" ]; then
	notify-send -u normal "Valkyrie"
	exit 0
fi
