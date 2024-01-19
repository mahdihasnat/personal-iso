#!/bin/bash

set -eux

echo "\nInstalling Insomnia ...\n"

# Add to sources
echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
    | sudo tee -a /etc/apt/sources.list.d/insomnia.list

# Refresh repository sources and install Insomnia

sudo apt-get update -y
sudo apt-get install insomnia -y