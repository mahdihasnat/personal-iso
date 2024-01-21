#!/bin/bash
set -eux

echo "Installing openssh-server..."
apt-get install -o DPkg::Lock::Timeout=5 -y openssh-server
