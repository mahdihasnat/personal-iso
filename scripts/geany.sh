#!/bin/bash
# set -eux

echo "\nInstalling Geany ...\n"
apt install -o DPkg::Lock::Timeout=5 -y geany
echo "\nPrinting Geany version ...\n"
geany --version
