#!/bin/bash

# Remove the local manifests directory if it exists (cleanup before repo initialization)
rm -rf .repo/local_manifests/

# Initialize ROM manifest
repo init --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 16 -g default,-mips,-darwin,-notdefault

# Sync the repo with force to ensure a clean sync
/opt/crave/resync.sh

# rm -rf 
rm -rf packages/apps/Updater

# add updater
git clone https://github.com/Zeydann/packages_apps_Updater-inf.git -b 16 packages/apps/Updater

# ViperFX
#git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX

# B
cd frameworks/native && curl https://github.com/pos-xyz-personal/frameworks_native/commit/9b1091664329d9b8055d246210cf442b8d7eb5da.patch | git am && cd ../..

# Set up th build environment
. build/envsetup.sh

# Choose the target device
lunch infinity_rodin-userdebug

# full target
m bacon