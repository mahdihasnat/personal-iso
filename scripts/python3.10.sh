#!/bin/bash
# set -eux

echo "Installing Python 3.10..."

apt install -o DPkg::Lock::Timeout=-1 -y software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt install -o DPkg::Lock::Timeout=-1 -y python3.10-full
