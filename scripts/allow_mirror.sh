#!/bin/bash
# set -eux
sed 's@http://archive.ubuntu.com/ubuntu@mirror://mirrors.ubuntu.com/mirrors.txt@' -i /etc/apt-get/sources.list
