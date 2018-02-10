#!/bin/bash
#
# For downloading prebuilt apks
# Currently only Orfox and Orbot

SCRIPTPATH="$(cd "$(dirname "$0")";pwd -P)"

source $SCRIPTPATH/metadata

app=$1
url=${urls[$app]}

TEMP=$(mktemp)
curl -L $url > $TEMP
$SCRIPTPATH/copy-apk.sh $app $TEMP
rm $TEMP
