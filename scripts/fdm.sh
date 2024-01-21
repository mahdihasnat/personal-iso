#!/bin/bash
set -eux

echo "\nInstalling Free Download Manager ...\n"

echo "Downloading Free Download Manager ..."
wget -O fdm.deb https://files2.freedownloadmanager.org/6/latest/freedownloadmanager.deb

apt-get install -o DPkg::Lock::Timeout=-1 -y ./fdm.deb

echo "Removing fdm.deb ..."
rm fdm.deb
