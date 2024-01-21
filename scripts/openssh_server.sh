#!/bin/bash
set -eux

echo "Installing openssh-server..."
apt-get install -o DPkg::Lock::Timeout=60 -y openssh-server
