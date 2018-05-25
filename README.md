This repository contains the apps bundled with CalyxOS, and some other configuration.

This document also contains some generally useful instructions.

### apps
Contains the apk files for the apps included, some built from source, and some prebuilt.

Bitmask, Briar, Conversations, k9mail, ooniprobe, OpenKeychain, Orbot, Orfox, Signal

#### apps/src
Contains source code of the included apps which are built from source, as git submodules

### CalyxLayout
For putting the included apps in the default homescreen

### overlay
For overlaying certain configuration such as OTA server URL

### scripts
Scripts used to manage the included apps.

#### scripts/metadata
Contains metadata of the apps included.
Apps are divided into three
1. src - Apps built from source
2. dl - Apps downloaded as prebuilt
3. lib - Any apps from the above which inlude libraries which have to be separately installed

#### scripts/build-apk.sh
Script to build the 'src' apps.

Takes a single argument, the name of the app to be built.

#### scripts/copy-apk.sh
Script to copy the apps, and libraries for the 'lib' apps.
Mainly for internal use, used by both build-apk.sh and download-apk.sh

#### scripts/download-apk.sh
Used to downlaod the 'dl' apps.

Takes a single argument, the name of the app to be downloaded.

#### scripts/update-app.sh
To update a particular app.

Takes a single argument, the name of the app to be updated.

#### scripts/update-apps.sh
To update all of the includes apps


## Typical app update workflow

For 'src' apps, the latest tag is checked out in the git submodule.
Any updates needed to `metadata` are done.
For 'dl' apps, the URL is updated in the `metadata` file.
Then either of `update-app.sh` or `update-apps.sh` is called,


## General build instructions
The document at [Building](https://copperhead.co/android/docs/building) can be followed as-is.
There are no tags here, however the exact same branch naming scheme is used, so one can follow the
instructions for the development branch.

## Installation
See [Install](https://copperhead.co/android/docs/install)