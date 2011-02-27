#!/bin/sh
cd "/home/sio/.PlayOnLinux/wineprefix/Starcraft/drive_c/Program Files/Starcraft"
rm install.exe

case "$*" in
    "--bw" )
        ln -s ./install.exe-bw install.exe
    ;;
    "--sc" )
        ln -s ./install.exe-sc install.exe
    ;;
    *  )
        echo "Options:\n --sc: run StarCraft Original\n --bw: run Broodwar expansion"
        exit
    ;;
esac

playonlinux --run "Starcraft : BroodWar"
