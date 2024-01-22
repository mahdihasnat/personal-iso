#!/bin/bash
set -e

echo "\nInstalling Minikube ...\n"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
apt-get -o DPkg::Lock::Timeout=-1 -y install ./minikube_latest_amd64.deb
rm minikube_latest_amd64.deb
