#!/bin/bash
# set -eux

echo "\nInstalling Docker ...\n"
apt-get update -y
apt-get install -o DPkg::Lock::Timeout=5 -y ca-certificates curl gnupg
install -m 0755 -d /etc/apt-get/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor --batch --yes -o /etc/apt-get/keyrings/docker.gpg
chmod a+r /etc/apt-get/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt-get/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt-get/sources.list.d/docker.list > /dev/null
apt-get update -y

apt-get install -o DPkg::Lock::Timeout=5 -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

docker run hello-world