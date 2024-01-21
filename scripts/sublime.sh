#!/bin/bash
# set -eux

# https://www.sublimetext.com/docs/linux_repositories.html#apt-get
echo "\nInstalling Sublime Text 4 ...\n"
apt-get install -o DPkg::Lock::Timeout=5 -y wget gpg
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor >> /etc/apt-get/trusted.gpg.d/sublimehq-archive.gpg
echo "deb https://download.sublimetext.com/ apt-get/stable/" >> /etc/apt-get/sources.list.d/sublime-text.list
apt-get update
apt-get install -o DPkg::Lock::Timeout=5 -y apt-get-transport-https
apt-get install -o DPkg::Lock::Timeout=5 -y sublime-text

echo "\nPrinting Sublime Text version ...\n"
subl --version
