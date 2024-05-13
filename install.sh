#!/bin/bash

# Ensure script is executed with root privileges
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

# Check if the required directories exist, if not, create them
mkdir -p /userdata/system/configs/emulationstation/scripts/system-selected/
mkdir -p /userdata/system/configs/emulationstation/scripts/game-selected/
mkdir -p /userdata/system/scripts/

# Copy required files to their respective directories
cp /userdata/BatoceraLocalMarquee-main/system.sh /userdata/system/configs/emulationstation/scripts/system-selected/
cp /userdata/BatoceraLocalMarquee-main/game.sh /userdata/system/configs/emulationstation/scripts/game-selected/
cp /userdata/BatoceraLocalMarquee-main/script.sh /userdata/system/scripts/

# Ensure default image file exists
cp /userdata/BatoceraLocalMarquee-main/default.png /userdata/

# Set permissions for the scripts
chmod +x /userdata/system/configs/emulationstation/scripts/system-selected/system.sh
chmod +x /userdata/system/configs/emulationstation/scripts/game-selected/game.sh
chmod +x /userdata/system/scripts/script.sh

echo "Installation completed successfully."
