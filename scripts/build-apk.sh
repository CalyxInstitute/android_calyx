#!/bin/bash

set -o nounset

SCRIPTPATH="$(cd "$(dirname "$0")";pwd -P)"
APPSRC=$SCRIPTPATH/../apps/src

source $SCRIPTPATH/metadata

app=$1
buildcmd=${buildcmds[$app]}
apk=${apks[$app]}

pushd $APPSRC/$app
./gradlew $buildcmd
$SCRIPTPATH/copy-apk.sh $app $(realpath ./$apk)
popd
