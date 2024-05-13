#!/bin/bash

System=$1
Romname=${2%.*}
rom=${Romname##*/}
fbv "/userdata/roms/Marquee/$rom.png" -fer
