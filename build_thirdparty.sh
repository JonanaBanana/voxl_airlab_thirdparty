#!/bin/bash

#this shell file is an installer for all thirdparty packages. 
#It is intended to be run a clean installation of Ubuntu 22.04 LTS, and will install Ceres Solver, Pangolin, Kindr, and ORB-SLAM3.
#Before running this shell file, make sure that you have installed all relevant dependencies. These will be included in install_dependencies.sh
#This package assumes that ros2 humble is already installed, since it installs alongside OpenCV 4.5.4.

echo "Starting installation of thirdparty packages."

BASH_DIR=$(pwd)

cd "${BASH_DIR}/ceres-solver/"
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

sudo make install -j $(nproc)
wait

cd "${BASH_DIR}/kindr/"
wait

mkdir build
wait

cd build
wait

cmake ..
wait

sudo make install -j $(nproc)
wait

cd "${BASH_DIR}/Pangolin/"

sudo ./scripts/install_prerequisites.sh all

cmake -B build

cmake --build build

cd build

make -j8

sudo make install

cd "${BASH_DIR}/ORB_SLAM3/"
wait

chmod +x build.sh
wait

./build.sh
wait

echo "Installation of all packages finished."