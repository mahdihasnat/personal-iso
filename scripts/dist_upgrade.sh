#!/bin/bash
set -e

apt-get -o DPkg::Lock::Timeout=-1 -y update
apt-get -o DPkg::Lock::Timeout=-1 -y dist-upgrade
