#!/bin/sh

amixer sset Master mute
(sleep 3; pgrep xlock && xset dpms force off)&
xlock -mode pacman -erasemode no_fade -timeelapsed -usefirst -lockdelay 3\
 -timeout 4 -font "-*-terminus-medium-r-normal-*-32-*-*-*-*-*-*-*"\
 -planfont "-*-terminus-medium-r-normal-*-32-*-*-*-*-*-*-*"\
 -background gray -icongeometry 256x256
amixer sset Master unmute
