#!/bin/bash
set -eux

echo "\nInstalling Insomnia ...\n"

# Add to sources
echo "deb [trusted=yes arch=amd64] https://download.konghq.com/insomnia-ubuntu/ default all" \
    | tee -a /etc/apt/sources.list.d/insomnia.list

# Refresh repository sources and install Insomnia

apt-get -o DPkg::Lock::Timeout=-1 -y update
apt-get -o DPkg::Lock::Timeout=-1 -y install insomnia
