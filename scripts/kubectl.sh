#!/bin/bash
# set -eux

echo "\nInstalling Kubectl ...\n"

apt-get update -y
apt-get install -o DPkg::Lock::Timeout=5 -y apt-get-transport-https ca-certificates curl

# If the folder `/etc/apt-get/keyrings` does not exist, it should be created before the curl command, read the note below.
mkdir -p -m 755 /etc/apt-get/keyrings
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.29/deb/Release.key | gpg --dearmor --batch --yes -o /etc/apt-get/keyrings/kubernetes-apt-get-keyring.gpg

# This overwrites any existing configuration in /etc/apt-get/sources.list.d/kubernetes.list
echo 'deb [signed-by=/etc/apt-get/keyrings/kubernetes-apt-get-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.29/deb/ /' | tee /etc/apt-get/sources.list.d/kubernetes.list

apt-get update -y
apt-get install -o DPkg::Lock::Timeout=5 -y kubectl

kubectl --help
kubectl version --client
