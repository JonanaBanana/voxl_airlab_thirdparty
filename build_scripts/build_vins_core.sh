#!/bin/bash

# This shell script runs the installation of vins-multis core package from a static fork
# It is intended to be run on a clean installation of Ubuntu 22.04 LTS
# Before running this script - ensure to have installed all relevant dependencies (install_dependencies.sh)
# Assume ROS2 Humble installed prior to running this

#!/bin/bash
BASH_DIR=$(pwd)

cd "${BASH_DIR}"
cd ../vins_core/
wait

cmake -S . -B ./build               \
        -DCMAKE_BUILD_TYPE=Release   \
        -DCMAKE_INSTALL_PREFIX="./install"

wait

cmake --build ./build -j$(nproc)

wait

cmake --install ./build