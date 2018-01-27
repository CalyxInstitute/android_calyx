#!/bin/bash

set -o nounset

SCRIPTPATH="$(cd "$(dirname "$0")";pwd -P)"

source $SCRIPTPATH/metadata

for app in ${apps[@]}; do
	echo $app;
	$SCRIPTPATH/build-apk.sh $app
done
$SCRIPTPATH/download-apk.sh
