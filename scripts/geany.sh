#!/bin/bash
set -eux

echo "\nInstalling Geany ...\n"
apt-get install -o DPkg::Lock::Timeout=60 -y geany
echo "\nPrinting Geany version ...\n"
geany --version
