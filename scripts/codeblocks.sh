#!/bin/bash
set -eux

# https://linuxhint.com/install-code-blocks-ubuntu/
echo "Installing Codeblocks ..."

add-apt-repository universe -y
apt-get -o DPkg::Lock::Timeout=-1 -y install codeblocks codeblocks-contrib
