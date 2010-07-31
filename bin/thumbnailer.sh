#!/bin/sh
for i in `echo "video@3gpp
video@dv
video@fli
video@flv
video@mp4
video@mp4v-es
video@mpeg
video@msvideo
video@ogg
video@quicktime
video@vivo
video@vnd.divx
video@vnd.vivo
video@x-anim
video@x-avi
video@x-flc
video@x-fli
video@x-flic
video@x-flv
video@x-m4v
video@x-matroska
video@x-ms-asf
video@x-ms-asx
video@x-msvideo
video@x-ms-wm
video@x-ms-wmv
video@x-ms-wmx
video@x-ms-wvx
video@x-nsv
video@x-ogm@ogg
video@x-theora@ogg
video@x-totem-stream"`; do
    gconftool-2 -t string -s /desktop/gnome/thumbnailers/$i/command '/usr/bin/ffmpegthumbnailer -s %s -i %i -o %o -c png -f -t 10';
done
