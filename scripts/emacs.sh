#!/bin/bash
set -e

echo "\nInstalling Emacs ...\n"
apt-get -o DPkg::Lock::Timeout=-1 -y install emacs
echo "\nPrinting Emacs version ...\n"
emacs --version
