#!/bin/bash
set -eux

echo "Installing openssh-server..."
apt-get install -o DPkg::Lock::Timeout=20 -y openssh-server
