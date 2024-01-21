#!/bin/bash
# set -eux

echo "\nInstalling Geany ...\n"
apt install -o DPkg::Lock::Timeout=-1 -y geany
echo "\nPrinting Geany version ...\n"
geany --version
