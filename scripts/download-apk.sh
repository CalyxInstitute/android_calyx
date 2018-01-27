#!/bin/bash
#
# For downloading prebuilt apks
# Currently only Orfox and Orbot

SCRIPTPATH="$(cd "$(dirname "$0")";pwd -P)"

ORBOT_URL="https://guardianproject.info/releases/Orbot-15.5.1-RC-2-multi-SDK23.apk"
ORFOX_URL="https://guardianproject.info/releases/Orfox-v1.4-RC-3.apk"

TEMP=$(mktemp)
curl -L $ORBOT_URL > $TEMP
$SCRIPTPATH/copy-apk.sh Orbot $TEMP
rm $TEMP
curl -L $ORFOX_URL > $TEMP
$SCRIPTPATH/copy-apk.sh Orfox $TEMP
rm $TEMP
