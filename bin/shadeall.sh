#!/bin/bash 
# GotF http://www.linux.org.ru/forum/desktop/5070771


ACTION=${1}; # get action; must be add, toggle or remove 
get-current-ws() { 
   # get workspace number; count begins from zero 
   wmctrl -d | grep "*" | cut -d " " -f1; 
} 
get-windows-list() { 
   # get list of windows of current workspace 
   wmctrl -l | grep " $(get-current-ws) ${HOSTNAME}" | awk '{for (i=4;i<NF+1;i++) {printf "%s ",$i};print ""}' 
} 
get-windows-list | while read window; do 
   wmctrl -b ${ACTION},shaded -r ${window}; 
done 

