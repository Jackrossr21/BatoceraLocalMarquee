#!/bin/bash

case $1 in
Start)
    Romname=$3
    Gamepath=$2
    MarqueePath="/userdata/roms/Marquee"
    MarqueeHiresPath="$MarqueePath/hires"
    MarqueeSystemsPath="$MarqueePath/systems"
    MarqueeWheelPath="$MarqueePath/wheel"
    MarqueeVideosPath="$MarqueePath/videos"

    if [ -f "$MarqueeVideosPath/$Romname.mp4" ]; then
        ffmpeg -i "$MarqueeVideosPath/$Romname.mp4" -vf scale=1280:720 -pix_fmt rgb565le -f fbdev /dev/fb0 &
    fi

    if [ -f "$MarqueeHiresPath/$Romname.jpg" ]; then
        fbv "$MarqueeHiresPath/$Romname.jpg" -e 2
    elif [ -f "$MarqueePath/$Romname.jpg" ]; then
        fbv "$MarqueePath/$Romname.jpg" -e 2
    elif [ -f "$MarqueeSystemsPath/$Romname.jpg" ]; then
        fbv "$MarqueeSystemsPath/$Romname.jpg" -e 2
    elif [ -f "$MarqueeWheelPath/$Romname.jpg" ]; then
        fbv "$MarqueeWheelPath/$Romname.jpg" -e 2
    else
        fbv "$MarqueePath/default.jpg" -e 2
    fi
    ;;
Gameselected)
    System=$2
    Romname=$3

    if [ -f "$MarqueePath/$Romname.png" ]; then
        fbv "$MarqueePath/$Romname.png" -e 2
    elif [ -f "$MarqueeSystemsPath/$Romname.png" ]; then
        fbv "$MarqueeSystemsPath/$Romname.png" -e 2
    elif [ -f "$MarqueeWheelPath/$Romname.png" ]; then
        fbv "$MarqueeWheelPath/$Romname.png" -e 2
    else
        fbv "$MarqueePath/default.png" -e 2
    fi
    ;;
Systemselected)
    imagepath="/userdata/roms/sysimages/$2"
    if [ -f "$imagepath.png" ]; then
        fbv "$imagepath.png" -e 2
    else
        fbv "$MarqueePath/default_system.png" -e 2
    fi
    ;;
esac
