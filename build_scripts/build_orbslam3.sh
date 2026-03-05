#!/bin/bash

# This shell script runs the installation of the orbslam3 from a static fork
# It is intended to be run on a clean installation of Ubuntu 22.04 LTS
# Before running this script - ensure to have installed all relevant dependencies (install_dependencies.sh)
# Assume ROS2 Humble installed prior to running this

echo "Starting intallation of ORBSLAM3..."

BASH_DIR=$(pwd)

cd "${BASH_DIR}"
cd ../ORB_SLAM3/
wait

chmod +x build.sh
wait

./build.sh
wait

echo "ORBSLAM3 installation complete!"
