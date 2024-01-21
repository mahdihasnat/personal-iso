#!/bin/bash
set -eux

echo "Installing Python 3.10..."

apt-get install -o DPkg::Lock::Timeout=20 -y software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt-get install -o DPkg::Lock::Timeout=20 -y python3.10-full
