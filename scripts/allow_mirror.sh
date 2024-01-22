#!/bin/bash
set -e
sed 's@http://archive.ubuntu.com/ubuntu@mirror://mirrors.ubuntu.com/mirrors.txt@' -i /etc/apt/sources.list
