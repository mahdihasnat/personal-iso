#!/bin/bash
set -eux

echo "Installing GCC 10, G++ 10..."

apt-get -o DPkg::Lock::Timeout=-1 -y install gcc-10 g++-10
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-10 80 --slave /usr/bin/g++ g++ /usr/bin/g++-10 --slave /usr/bin/gcov gcov /usr/bin/gcov-10
