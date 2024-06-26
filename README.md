# BatoceraLocalMarquee

These scripts provide functionality to display marquee images and videos in Batocera, a Linux-based retro gaming operating system. The scripts are designed to work with the Batocera frontend and are triggered based on specific events such as selecting a game or system.

## Installation

1. SSH into your Batocera system.
2. Run the following commands to download and install the Batocera Local Marquee scripts:

   # Download the repository zip file from GitHub
   wget https://github.com/Jackrossr21/BatoceraLocalMarquee/archive/master.zip -O BatoceraLocalMarquee.zip

   # Extract the contents of the zip file
   unzip BatoceraLocalMarquee.zip -d /userdata/

   # Navigate to the extracted directory
   cd /userdata/BatoceraLocalMarquee-main

   # Run the installation script
   bash install.sh
   
   This script will create the necessary directories, copy the scripts to their appropriate locations, place the default images into the Marquee directories, and set the permissions for the scripts.

## Usage

- **marquee.sh**: This script is responsible for displaying marquee images and videos. It is called by other scripts based on specific events.
- **system.sh**: This script is called from the emulationstation system-selected folder and is used to change the marquee to match whatever system you are hovering over.
- **game.sh**: This script is called from the emulationstation game-selected folder and will match the marquee to whichever game you are hovering over.
- **script.sh**: This script is called from Batocera on game start and will trigger a game start/end event to handle what displays on the marquee (video, high-res image, low-res image, or wheel image).

## Directory Structure

The artwork is organized into the following directories relative to the roms folder:
- `Marquee`: Contains the default lower resolution marquee.
- `Marquee/hires`: Contains higher resolution marquee files if available.
- `Marquee/systems`: Contains images for each console/system if available.
- `Marquee/wheel`: Contains basic images for games.
- `Marquee/videos`: Contains several hundred custom videos.

Additionally, each system inside of the roms folder may have wheel/marquee artwork in an `images` folder.

## Customization

You can customize the default images and videos by placing your own files in the appropriate directories. Make sure to use the correct file formats and naming conventions specified in the scripts.

## License

This project is licensed under the [MIT License](LICENSE).
