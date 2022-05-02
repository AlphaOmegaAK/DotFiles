#!/bin/bash

# Current Settings
# DP-1 : 3440 x 1400 + 0 + 0
# HDMI-0 : 1920 x 1080 + 3440 + 0

# xrandr --output DP-1 --auto --below HDMI-0

# +X		       +Y
# +Horizonal Offet +Vertical Offset
# xrandr --output DP-1 --auto --primary -pos 0x0 --rotate normal --output HDMI-0 +0+1400 --rotate normal
xrandr --output DP-1 --auto --primary --pos 0x0 --rotate normal --output HDMI-0 --auto --pos 750x-1425 --rotate normal
