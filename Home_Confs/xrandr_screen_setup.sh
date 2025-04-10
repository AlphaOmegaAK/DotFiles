#!/bin/bash

# Current Settings
# DP-1 : 3440 x 1400 + 0 + 0
# HDMI-0 : 1920 x 1080 + 3440 + 0

# xrandr --output DP-1 --auto --below HDMI-0

# +X		       +Y
# +Horizonal Offet +Vertical Offset
# xrandr --output DP-1 --auto --primary -pos 0x0 --rotate normal --output HDMI-0 +0+1400 --rotate normal
xrandr --output DisplayPort-2 --mode 3440x1440


# xrandr --output DisplayPort-2 --mode 3440x1440 --rate 100.00 --primary --pos 0x0 --rotate normal --output HDMI-A-1 --mode 1920x1080 --rate 120.00 --pos 750x-1425 --rotate normal
