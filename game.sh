#!/bin/bash
System=$1
Romname=${2%.*}
Romname=${Romname##*/}
/userdata/marquee.sh Gameselected "$System" "$Romname"
