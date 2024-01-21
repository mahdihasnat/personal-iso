#!/bin/bash
# set -eux

echo "\nInstalling Emacs ...\n"
apt install -o DPkg::Lock::Timeout=5 -y emacs
echo "\nPrinting Emacs version ...\n"
emacs --version
