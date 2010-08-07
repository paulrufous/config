#!/bin/bash

# take a gdm screenshot
chvt 9 ; sleep 5 ; XAUTHORITY=/var/lib/gdm/:1.Xauth DISPLAY=:1.0 import -window root /home/sio/gdm.png
