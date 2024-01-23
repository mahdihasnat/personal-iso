#!/bin/bash
set -eux

echo "\nInstalling Vim ...\n"
apt-get -o DPkg::Lock::Timeout=-1 -y install vim-gtk3
echo "\nPrinting Vim version ...\n"
vim --version
