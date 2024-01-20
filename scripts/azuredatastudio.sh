#!/bin/bash

set -eux

echo "\nInstalling Azure Data Studio ...\n"

apt install -y libunwind8

curl -L -o azuredatastudio.deb https://azuredatastudio-update.azurewebsites.net/latest/linux-deb-x64/stable
sudo dpkg -i azuredatastudio.deb


rm azuredatastudio.deb
