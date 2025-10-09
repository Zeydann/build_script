#!/bin/bash

# Remove the local manifests directory if it exists (cleanup before repo initialization)
rm -rf .repo/local_manifests/
rm -rf prebuilts/clang/host/linux-x86

# Initialize ROM manifest
#repo init -u https://github.com/Evolution-X/manifest -b vic --git-lfs

# Sync the repo with force to ensure a clean sync
#/opt/crave/resync.sh

# Viper
#git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX

# B
#cd frameworks/native && curl https://github.com/pos-xyz-personal/frameworks_native/commit/9b1091664329d9b8055d246210cf442b8d7eb5da.patch | git am && cd ../..

# Set up th build environment
. build/envsetup.sh

# Choose the target device
lunch lineage_rodin-bp1a-userdebug

# full target
m evolution