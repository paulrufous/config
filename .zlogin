if [ $USER = sio  ] && [ "`tty`" = "/dev/tty1" ]; then
    setsid startx;
    exit;
else
fi
