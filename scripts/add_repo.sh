#!/bin/bash
set -e

echo "Enabling universe repo.."
add-apt-repository -y universe

echo "Enabling multiverse repo.."
add-apt-repository -y multiverse
