#!/bin/bash
set -eux

echo "\nInstalling Kubectl ...\n"

apt-get -o DPkg::Lock::Timeout=-1 -y update
apt-get -o DPkg::Lock::Timeout=-1 -y install apt-transport-https ca-certificates curl

# If the folder `/etc/apt/keyrings` does not exist, it should be created before the curl command, read the note below.
mkdir -p -m 755 /etc/apt/keyrings
curl -fsSL https://pkgs.k8s.io/core:/stable:/v1.29/deb/Release.key | gpg --dearmor --batch --yes -o /etc/apt/keyrings/kubernetes-apt-keyring.gpg

# This overwrites any existing configuration in /etc/apt/sources.list.d/kubernetes.list
echo 'deb [signed-by=/etc/apt/keyrings/kubernetes-apt-keyring.gpg] https://pkgs.k8s.io/core:/stable:/v1.29/deb/ /' | tee /etc/apt/sources.list.d/kubernetes.list

apt-get -o DPkg::Lock::Timeout=-1 -y update
apt-get -o DPkg::Lock::Timeout=-1 -y install kubectl

kubectl --help
kubectl version --client
