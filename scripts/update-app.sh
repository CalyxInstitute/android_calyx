#!/bin/bash

set -o nounset

SCRIPTPATH="$(cd "$(dirname "$0")";pwd -P)"

source $SCRIPTPATH/metadata

app=$1

for srcapp in ${src_apps[@]}; do
	if [[ $srcapp == $app ]]; then
		$SCRIPTPATH/build-apk.sh $app
	fi
done
for dlapp in ${dl_apps[@]}; do
	if [[ $dlapp == $app ]]; then
		$SCRIPTPATH/download-apk.sh $app
	fi
done
