#!/bin/bash
# For updating the forked repos

set -o nounset

calyx_repos=(
  platform_manifest
  android_calyx
  device_huawei_angler
  device_lge_bullhead
  platform_packages_apps_F-Droid_privileged-extension
  platform_system_sepolicy
)

for repo in ${calyx_repos[@]}; do
	echo -e "\n>>> $(tput setaf 3)Handling $repo at $path$(tput sgr0)"

	cd $repo || exit 1
done
