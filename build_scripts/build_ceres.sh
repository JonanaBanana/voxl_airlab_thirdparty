#!/bin/bash

# This shell script runs the installation of the ceres-solver from a static fork
# It is intended to be run on a clean installation of Ubuntu 22.04 LTS
# Before running this script - ensure to have installed all relevant dependencies (install_dependencies.sh)

echo "Starting intallation of Ceres-Solver..."

BASH_DIR=$(pwd)
cd "${BASH_DIR}"
cd ../ceres-solver/
wait

mkdir build
wait

cd build
wait

cmake ..
wait

make -j $(nproc)
wait

make test
wait

sudo make instsall -j $(nproc)
wait

cd ..
wait

sudo rm -r build/
wait

echo "Ceres-Solver installation complete!"