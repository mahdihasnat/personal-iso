#!/bin/bash
set -eux

echo "\nInstalling Vim ...\n"
apt-get install -o DPkg::Lock::Timeout=60 -y vim-gtk3
echo "\nPrinting Vim version ...\n"
vim --version
