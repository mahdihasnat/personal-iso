#!/bin/bash
# set -eux

echo "Enabling universe repo.."
add-apt-get-repository -y universe

echo "Enabling multiverse repo.."
add-apt-get-repository -y multiverse
