#!/bin/bash

set -eux

echo "\nInstalling Free Download Manager ...\n"

echo "Downloading Free Download Manager ..."
wget -O fdm.deb https://files2.freedownloadmanager.org/6/latest/freedownloadmanager.deb

echo "Installing ffmpeg as depenency .."
sudo apt-get install -y ffmpeg

echo "Extracting fdm.deb ..."
sudo dpkg -i fdm.deb


echo "Installing Free Download Manager ..."
sudo apt-get install -f -y

echo "Removing fdm.deb ..."
rm fdm.deb
