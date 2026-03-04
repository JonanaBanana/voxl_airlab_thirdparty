#!/bin/bash

# This shell script runs the installation of the kindr from a static fork
# It is intended to be run on a clean installation of Ubuntu 22.04 LTS
# Before running this script - ensure to have installed all relevant dependencies (install_dependencies.sh)

echo "Starting intallation of Kindr..."

BASH_DIR=$(pwd)

cd "${BASH_DIR}"
cd ../kindr/
wait

mkdir build
wait

cd build
wait

cmake ..
wait

sudo make install -j $(nproc)
wait

cd ..
wait

sudo rm -r build/
wait

echo "Kindr installation complete!"

