#!/bin/bash
set -e

echo "Installing Python 3.10..."

apt-get -o DPkg::Lock::Timeout=-1 -y install software-properties-common
add-apt-repository -y ppa:deadsnakes/ppa
apt-get -o DPkg::Lock::Timeout=-1 -y install python3.10-full
