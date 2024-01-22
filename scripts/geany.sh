#!/bin/bash
set -eux

echo "\nInstalling Geany ...\n"
apt-get -o DPkg::Lock::Timeout=-1 -y install geany
echo "\nPrinting Geany version ...\n"
geany --version
