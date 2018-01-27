#!/bin/bash

set -o nounset

SCRIPTPATH="$(cd "$(dirname "$0")";pwd -P)"

if [[ $# -ne 2 ]]; then
	echo "Usage: $0 appname apkpath"
else
	app=$1
	apk=$2
fi

apps=(
  Bitmask
  Conversations
  OpenKeychain
  Orbot
  Orfox
  Signal
  k9mail
  ooniprobe
)

Bitmask_libs=(
  lib/armeabi-v7a/libopenvpn.so
  lib/armeabi-v7a/libopvpnutil.so
  lib/arm64-v8a/libopenvpn.so
  lib/arm64-v8a/libopvpnutil.so
)

Orfox_libs=(
  lib/armeabi-v7a/libmozglue.so
  lib/armeabi-v7a/libplugin-container-pie.so
  lib/armeabi-v7a/libplugin-container.so
)

ooniprobe_libs=(
  lib/armeabi-v7a/libmeasurement_kit.so
  lib/arm64-v8a/libmeasurement_kit.so
)

cd $SCRIPTPATH/..
rm -rf apps/$app
mkdir -p apps/$app
cp $apk apps/$app/${app}.apk
app_libs=${app}_libs[@]
if [[ ! -z "${!app_libs}" ]]; then
	for i in ${!app_libs}; do
		mkdir -p apps/$app/$(dirname $i)
		unzip ${apk} $i -d apps/$app/
	done
	[[ -d apps/$app/lib/armeabi-v7a ]] && mv apps/$app/lib/armeabi-v7a apps/$app/lib/arm
	[[ -d apps/$app/lib/arm64-v8a ]] && mv apps/$app/lib/arm64-v8a apps/$app/lib/arm64
fi
