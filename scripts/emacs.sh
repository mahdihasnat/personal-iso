#!/bin/bash
# set -eux

echo "\nInstalling Emacs ...\n"
apt install -o DPkg::Lock::Timeout=-1 -y emacs
echo "\nPrinting Emacs version ...\n"
emacs --version
