#!/bin/bash
# set -eux

echo "\nInstalling OpenJDK 17 ...\n"
apt install -o DPkg::Lock::Timeout=-1 -y openjdk-17-jdk openjdk-17-jre
echo "\nPrinting Java version ...\n"
java --version
echo "\nPrinting Java compiler version ...\n"
javac --version
