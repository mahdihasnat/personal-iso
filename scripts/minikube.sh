#!/bin/bash
set -eux

echo "\nInstalling Minikube ...\n"
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
apt install -o DPkg::Lock::Timeout=-1 -y ./minikube_latest_amd64.deb
rm minikube_latest_amd64.deb
