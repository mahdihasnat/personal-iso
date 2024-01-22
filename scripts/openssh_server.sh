#!/bin/bash
set -e

echo "Installing openssh-server..."
apt-get -o DPkg::Lock::Timeout=-1 -y install openssh-server
