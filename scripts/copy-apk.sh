#!/bin/bash

set -o nounset

SCRIPTPATH="$(cd "$(dirname "$0")";pwd -P)"

source $SCRIPTPATH/metadata

if [[ $# -ne 2 ]]; then
	echo "Usage: $0 appname apkpath"
else
	app=$1
	apk=$2
fi

cd $SCRIPTPATH/..
rm -rf apps/$app
mkdir -p apps/$app
cp $apk apps/$app/${app}.apk
for libapp in ${lib_apps[@]}; do
	if [[ $libapp == $app ]]; then
		for lib in ${libs[$app]}; do
			mkdir -p apps/$app/$(dirname $lib)
			unzip ${apk} $lib -d apps/$app/
		done
		[[ -d apps/$app/lib/armeabi-v7a ]] && mv apps/$app/lib/armeabi-v7a apps/$app/lib/arm
		[[ -d apps/$app/lib/arm64-v8a ]] && mv apps/$app/lib/arm64-v8a apps/$app/lib/arm64
	fi
done
