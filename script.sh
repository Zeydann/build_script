#!/bin/bash

# ViperFX
git clone https://github.com/TogoFire/packages_apps_ViPER4AndroidFX.git packages/apps/ViPER4AndroidFX

# ytta
cd frameworks/native && curl https://github.com/pos-xyz-personal/frameworks_native/commit/9b1091664329d9b8055d246210cf442b8d7eb5da.patch | git am && cd ../..

# keys
git clone https://github.com/ProjectInfinity-X/vendor_infinity-priv_keys-template vendor/infinity-priv/keys && cd vendor/infinity-priv/keys && ./keys.sh && cd ../../..