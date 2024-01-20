#!/bin/bash

set -eux

echo "\nInstalling Azure Data Studio ...\n"

apt install -y libunwind8

curl -L -o azuredatastudio.deb https://azuredatastudio-update.azurewebsites.net/latest/linux-deb-x64/stable

apt install -o DPkg::Lock::Timeout=-1 -y ./azuredatastudio.deb

rm azuredatastudio.deb
