#!/bin/bash

# Remove the local manifests directory if it exists (cleanup before repo initialization)
rm -rf .repo/local_manifests/

# Initialize ROM manifest
repo init -u https://github.com/RisingOS-Revived/android -b qpr2 --git-lfs

# Sync the repo with force to ensure a clean sync
/opt/crave/resync.sh

# Viper
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX

# B
cd frameworks/native && curl https://github.com/pos-xyz-personal/frameworks_native/commit/9b1091664329d9b8055d246210cf442b8d7eb5da.patch | git am && cd ../..

# Choose the target device
riseup rodin userdebug

# keys
gk -s

# Build the ROM (use mka bacon for a full build)
rise b