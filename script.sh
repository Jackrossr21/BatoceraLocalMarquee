#!/bin/bash

case $1 in
gameStart)
    gamepath=${5%/*}
    romname=${5##*/}
    /userdata/marquee.sh Start "$gamepath" "${romname%.*}" &
    ;;
gameStop)
    killall ffmpeg
    ;;
esac
