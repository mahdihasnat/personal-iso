#!/bin/bash
set -eux

echo "\nInstalling OpenJDK 17 ...\n"
apt-get -o DPkg::Lock::Timeout=-1 -y install openjdk-17-jdk openjdk-17-jre
echo "\nPrinting Java version ...\n"
java --version
echo "\nPrinting Java compiler version ...\n"
javac --version
