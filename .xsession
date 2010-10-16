#!/bin/sh
#
# THIS FILE IS EXECUTED AT START OF X SESSION
#

# SOME APPLICATIONS TO LAUNCH BEFORE WINDOW MANAGER
xrandr --output LVDS1 --set "scaling mode" Full&
fbsetbg -l
#sleep 20; ~/bin/userapps.d.sh

# ENVIROMENT VARIABLES
export GNOME_DESKTOP_SESSION_ID=1234567890

# LAUNCH WINDOW MANAGER AND EXIT THIS SCRIPT
# "EXEC" REQUIRED

fluxbox_daemon () {
    fluxbox || fluxbox_daemon
}
startfluxbox || fluxbox_daemon

#~exec urxvt
#~exec openbox
#~exec kwin
