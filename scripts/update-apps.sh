#!/bin/bash

set -o nounset

SCRIPTPATH="$(cd "$(dirname "$0")";pwd -P)"

source $SCRIPTPATH/metadata

for app in ${src_apps[@]}; do
	echo $app;
	$SCRIPTPATH/build-apk.sh $app
done
for app in ${dl_apps[@]}; do
	echo $app
	$SCRIPTPATH/download-apk.sh $app
done
