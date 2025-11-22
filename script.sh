#!/bin/bash

# Remove the local manifests directory if it exists (cleanup before repo initialization)
rm -rf .repo/local_manifests/

# Initialize ROM manifest
repo init -u https://github.com/Evolution-X/manifest -b bq1 --git-lfs

# Sync the repo with force to ensure a clean sync
/opt/crave/resync.sh

# keys
#git clone https://github.com/Zeydann/android_vendor_private_keys vendor/private/keys

# rm -rf
rm -rf build/soong && git clone https://github.com/Zeydann/build_soong-evox.git -b bka-q1 build/soong

# ViperFX
#git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX

# B
#cd frameworks/native && curl https://github.com/pos-xyz-personal/frameworks_native/commit/9b1091664329d9b8055d246210cf442b8d7eb5da.patch | git am && cd ../..

# c
#rm -rf hardware/lineage/compat && rm -rf hardware/lineage/interfaces 

# d
#git clone https://github.com/LineageOS/android_hardware_lineage_compat.git -b lineage-22.2 hardware/lineage/compat && git clone https://github.com/LineageOS/android_hardware_lineage_interfaces.git -b lineage-22.2 hardware/lineage/interfaces

# Set up th build environment
. build/envsetup.sh

# Choose the target device
lunch lineage_rodin-bp3a-userdebug

# Full Target
m evolution