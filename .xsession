#!/bin/sh


# USER-WIDE SETTINGS
xrandr --output LVDS1 --set "scaling mode" Full&
fbsetbg -l
setxkbmap -option "compose:menu"
# END SETTINGS


# TOUCHPAD DONE RIGHT
synclient TapButton1=1 FastTaps=1 PalmDetect=1 TouchpadOff=1
# END TOUCHPAD


# ENVIROMENT VARIABLES
export GNOME_DESKTOP_SESSION_ID=1234567890
# END VARIABLES


# LAUNCH WINDOW MANAGER AND EXIT THIS SCRIPT
# "EXEC" REQUIRED
startfluxbox || while true; do fluxbox && break || continue;  done
# END WM LAUNCH
