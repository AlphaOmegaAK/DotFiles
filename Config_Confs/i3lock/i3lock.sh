#!/usr/bin/env bash

# lock() {
#     i3lock -enfi -i $HOME/.config/i3lock/poly-triangles.png
# }

# case "$1" in
#     lock)
#         lock
#         ;;
#     logout)
#         i3-msg exit
#         ;;
#     suspend)
#         lock && systemctl suspend
#         ;;
#     hibernate)
#         lock && systemctl hibernate
#         ;;
#     reboot)
#         systemctl reboot
#         ;;
#     shutdown)
#         systemctl poweroff
#         ;;
#     *)
#         echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
#         exit 2
# esac

# exit 0

PICTURE=/tmp/i3lock.png
SCREENSHOT="scrot $PICTURE"

BLUR="5x4"
$SCREENSHOT
gm convert $PICTURE -blur $BLUR $PICTURE
i3lock -efi $PICTURE

sleep 60; pgrep i3lock && xset dpms force off
