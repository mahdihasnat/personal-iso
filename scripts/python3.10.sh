#!/bin/bash
# set -eux

echo "Installing Python 3.10..."

apt-get install -o DPkg::Lock::Timeout=5 -y software-properties-common
add-apt-get-repository -y ppa:deadsnakes/ppa
apt-get install -o DPkg::Lock::Timeout=5 -y python3.10-full
