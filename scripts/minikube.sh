#!/bin/bash

set -eux

echo "\nInstalling Minikube ...\n"
wget https://storage.googleapis.com/minikube/releases/latest/minikube_latest_amd64.deb
apt-get -y install ./minikube_latest_amd64.deb
rm minikube_latest_amd64.deb
