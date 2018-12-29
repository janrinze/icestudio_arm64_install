#!/bin/bash
echo "WARNING: This script is untested and installs armhf arch next to the current arch."
echo "It can break your current setup and make your system unusable."
read -p "Are you sure you wish to continue?"
if [ "$REPLY" != "yes" ]; then
   echo "exiting installer without any changes."
   exit
fi
echo "Installing nw.js armhf in ~/bin"

mkdir -p ~/bin
cd ~/bin
wget --show-progress https://github.com/LeonardLaszlo/nw.js-armv7-binaries/releases/download/nwjs-v0.12.0-linux-ARMv7/nwjs-v0.12.0-linux-arm.tar.gz

echo "adding armhf support and libraries. This may break your linux configuration. use very carefully."
sudo apt-get install multiarch-support 
sudo dpkg --add-architecture armhf
sudo apt-get update
sudo apt-get install libc6:armhf glib-2.0:armhf libxcomposite1:armhf libxcursor1:armhf libxdamage1:armhf libcups2:armhf libxss1:armhf libpangocairo-1.0:armhf libxrandr2:armhf libgconf-2-4:armhf libasound2:armhf libatk1.0-0:armhf libgtk-3-0:armhf libgtk2.0-0:armhf libnotify4:armhf

