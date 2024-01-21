#!/bin/bash
set -eux

echo "\nInstalling Emacs ...\n"
apt-get install -o DPkg::Lock::Timeout=20 -y emacs
echo "\nPrinting Emacs version ...\n"
emacs --version
