#!/bin/bash
# set -eux

echo "Installing openssh-server..."
apt install -o DPkg::Lock::Timeout=-1 -y openssh-server
