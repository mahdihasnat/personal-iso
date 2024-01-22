#!/bin/bash
set -eux

pushd "$(dirname "$0")"

source ../vars.sh
cd ..

cd $ADMIN_SCRIPTS_DIR

homedir="/home/$ADMIN_USER"
for file in *; do
	echo "Copying $file to $homedir ..."
	cp -rv $file "$homedir/"
	echo "chown -R -c -v $user:$user "$homedir/$file""
	chown -R -c -v $user:$user "$homedir/$file"
	echo "chmod -R -v 750 "$homedir/$file""
	chmod -R -v 750 "$homedir/$file"
done
echo "running popd"
popd
