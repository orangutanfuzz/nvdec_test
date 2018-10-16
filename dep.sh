#!/bin/bash

# Set this to the path of your NintendoSDK
NINTENDO_SDK="/path/to/NintendoSDK"

# Setup include dependencies
mkdir -p include
wget -q -O include/nvcommon.h https://raw.githubusercontent.com/DmitryADP/diff_qc750/083bd0f07911ec1c6cb84a9e5048b955c3f1172f/vendor/nvidia/tegra/core/include/nvcommon.h
sed -i 's/__arm__/__SWITCH__/g' include/nvcommon.h
wget -q -O include/tvmr_surface.h https://raw.githubusercontent.com/DmitryADP/diff_qc750/083bd0f07911ec1c6cb84a9e5048b955c3f1172f/vendor/nvidia/tegra/multimedia/tvmr/include/tvmr_surface.h
wget -q -O include/tvmr.h https://raw.githubusercontent.com/DmitryADP/diff_qc750/083bd0f07911ec1c6cb84a9e5048b955c3f1172f/vendor/nvidia/tegra/multimedia/tvmr/include/tvmr.h

# Setup lib dependencies
mkdir -p lib
cp $NINTENDO_SDK/Libraries/NX-NXFP2-a64/Develop/libandroid.a lib/
cp $NINTENDO_SDK/Libraries/NX-NXFP2-a64/Develop/libnvcore.a lib/
cp $NINTENDO_SDK/Libraries/NX-NXFP2-a64/Develop/libnvcore_bin.a lib/
cp $NINTENDO_SDK/Libraries/NX-NXFP2-a64/Develop/libnvmm.a lib/
cp $NINTENDO_SDK/Libraries/NX-NXFP2-a64/Develop/libnvmm_bin.a lib/

# Setup symbol dependencies
mkdir -p symbols
cp $NINTENDO_SDK/Libraries/NX-NXFP2-a64/Develop/nvn.nss symbols/nvn.o