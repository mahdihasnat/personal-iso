#!/bin/bash
set -e

pushd "$(dirname "$0")"

source ../vars.sh
cd ..

cd $DOTS_DIR

for file in .[^.]*; do
	cp -rv $file "/etc/skel"
done

cd -

popd
