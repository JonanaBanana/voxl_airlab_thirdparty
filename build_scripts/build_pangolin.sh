#!/bin/bash

# This shell script runs the installation of the pangolin from a static fork
# It is intended to be run on a clean installation of Ubuntu 22.04 LTS
# Before running this script - ensure to have installed all relevant dependencies (install_dependencies.sh)

echo "Starting intallation of Pangolin..."

BASH_DIR=$(pwd)
cd ../Pangolin
wait

sudo ./scripts/install_prerequisites.sh all
wait

cmake -B build
wait

cmake --build build
wait

cd build
wait

make -j $(nproc)
wait

sudo make install
wait

cd ..
wait

sudo rm -r build
wait

echo "Pangolin installation complete!"
