#!/bin/bash

set -eux

echo "\nInstalling Insomnia ...\n"

# Add to sources
wget -qO- 'https://packages.konghq.com/public/insomnia/setup.deb.sh' \
  | sudo -E distro=ubuntu codename=focal bash

# Refresh repository sources and install Insomnia

sudo apt-get update -y
sudo apt-get install insomnia -y
