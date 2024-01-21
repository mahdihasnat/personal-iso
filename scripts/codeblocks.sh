#!/bin/bash
# set -eux

# https://linuxhint.com/install-code-blocks-ubuntu/
echo "Installing Codeblocks ..."

add-apt-repository universe -y
apt install -o DPkg::Lock::Timeout=5 -y codeblocks codeblocks-contrib
