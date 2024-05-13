#!/bin/bash

case $1 in
Start)
    Romname=$3
    Gamepath=$2
    marqueeimage=$Gamepath/images/$Romname-marquee.png
    if [ -f "/userdata/roms/Marquee/videos/$Romname.mp4" ]; then
        ffmpeg -i /userdata/roms/Marquee/videos/$Romname.mp4 -vf scale=1280:720 -sws_flags bilinear -pix_fmt rgb565le -f fbdev /dev/fb0
    fi

    if [ -f "/userdata/roms/Marquee/hires/$Romname.jpg" ]; then
        fbv /userdata/roms/Marquee/hires/$Romname.jpg -fer
    elif [ -f "$marqueeimage" ]; then
        fbv $marqueeimage -fer
    else
        fbv /userdata/BatoceraLocalMarquee-main/default.png -fer
    fi
    ;;
Gameselected)
    System=$2
    Romname=$3

    if [ -f "/userdata/roms/Marquee/$Romname.png" ]; then
        fbv /userdata/roms/Marquee/$Romname.png -fer
    elif [ -f "/userdata/roms/$System/images/$Romname-marquee.png" ]; then
        fbv "/userdata/roms/$System/images/$Romname-marquee.png" -fer
    else
        fbv /userdata/BatoceraLocalMarquee-main/default.png -fer
    fi
    ;;
Systemselected)
    imagepath="/userdata/roms/sysimages/$2"
    if [ -f "$imagepath.png" ]; then
        fbv "$imagepath.png" -fer
    else
        fbv /userdata/BatoceraLocalMarquee-main/default.png -fer
    fi
    ;;
esac
