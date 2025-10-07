#!/bin/bash

# Remove the local manifests directory if it exists (cleanup before repo initialization)
rm -rf .repo/local_manifests/
rm -rf prebuilts/clang/host/linux-x86

# Initialize ROM manifest
repo init --no-repo-verify --git-lfs -u https://github.com/Zeydann/manifest-inf.git -b 15 -g default,-mips,-darwin,-notdefault

# Sync the repo with force to ensure a clean sync
/opt/crave/resync.sh

# Set up th build environment
. build/envsetup.sh

# Choose the target device
lunch infinity_rodin-userdebug

# full target
mka bacon
