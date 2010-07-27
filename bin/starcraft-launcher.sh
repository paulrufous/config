#!/bin/sh
case "$*" in
    "--bw" )
        cd "/home/sio/.PlayOnLinux/wineprefix/Starcraft/drive_c/Program Files/Starcraft"
        rm install.exe
        ln -s ./install.exe-bw install.exe
        playonlinux --run "Starcraft : BroodWar"
    ;;
    "--sc" )
        cd "/home/sio/.PlayOnLinux/wineprefix/Starcraft/drive_c/Program Files/Starcraft"
        rm install.exe
        ln -s ./install.exe-sc install.exe
        playonlinux --run "Starcraft : BroodWar"
    ;;
    *  )
        echo "Options:\n --sc: run StarCraft Original\n --bw: run Broodwar expansion"
        exit
    ;;
esac
