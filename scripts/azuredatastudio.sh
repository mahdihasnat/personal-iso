#!/bin/bash
set -e

echo "\nInstalling Azure Data Studio ...\n"

apt-get -o DPkg::Lock::Timeout=-1 -y install libunwind8

curl -L -o azuredatastudio.deb https://azuredatastudio-update.azurewebsites.net/latest/linux-deb-x64/stable

apt-get -o DPkg::Lock::Timeout=-1 -y install ./azuredatastudio.deb

rm azuredatastudio.deb
