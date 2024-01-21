#!/bin/bash
# set -eux

echo "\nInstalling Docker ...\n"
apt update -y
apt install -o DPkg::Lock::Timeout=5 -y ca-certificates curl gnupg
install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor --batch --yes -o /etc/apt/keyrings/docker.gpg
chmod a+r /etc/apt/keyrings/docker.gpg

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  tee /etc/apt/sources.list.d/docker.list > /dev/null
apt update -y

apt install -o DPkg::Lock::Timeout=5 -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

docker run hello-world