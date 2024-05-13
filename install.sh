#!/bin/bash

# Create directories
mkdir -p /userdata/roms/Marquee
mkdir -p /userdata/roms/Marquee/hires
mkdir -p /userdata/roms/Marquee/systems
mkdir -p /userdata/roms/Marquee/wheel
mkdir -p /userdata/roms/Marquee/videos

# Copy scripts to appropriate locations
cp marquee.sh /userdata/
cp system.sh /userdata/system/configs/emulationstation/scripts/system-selected/
cp game.sh /userdata/system/configs/emulationstation/scripts/game-selected/
cp script.sh /userdata/system/scripts/

# Copy default images to Marquee directories
cp default.jpg /userdata/roms/Marquee/
cp default.png /userdata/roms/Marquee/
cp default_system.png /userdata/roms/Marquee/

# Set permissions for scripts
chmod +x /userdata/marquee.sh
chmod +x /userdata/system.sh
chmod +x /userdata/game.sh
chmod +x /userdata/script.sh

echo "Installation completed successfully."
