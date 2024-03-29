#!/bin/bash
set -eux

pushd "$(dirname "$0")"

source ../vars.sh

echo "Creating admin account, $ADMIN_USER..."
useradd --create-home --password $(echo $ADMIN_PASSWORD) --shell /bin/bash -g admin $ADMIN_USER
usermod -aG sudo $ADMIN_USER

echo "Creating team account, $TEAM_USER..."
useradd --create-home --password $(echo $TEAM_PASSWORD) --shell /bin/bash $TEAM_USER

chmod -R 750 /home/*

popd
