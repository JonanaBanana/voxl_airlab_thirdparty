#!/bin/bash

#this shell file is an installer for all dependencies of the thirdparty packages. This installation file is tested on ubuntu 22.04. 

sudo apt update
wait

sudo apt upgrade -y
wait

sudo apt install python3-pip -y
wait

pip3 install setuptools wheel catkin_pkg

sudo apt-get install build-essential

sudo apt-get install libgflags-dev -y

sudo apt install libeigen3-dev -y
sudo apt-get install ament-cmake -y

sudo apt-get install libgtk2.0-dev -y

sudo apt-get install libgtk-3-dev -y

sudo apt-get install libavcodec-dev \
                     libavformat-dev \
                     libavutil-dev \
                     libswscale-dev\
                     libavdevice-dev -y

sudo apt-get install libblas-dev liblapack-dev -y

sudo apt-get install libatlas-base-dev libsuitesparse-dev -y

sudo apt-get install freeglut3-dev libglew-dev -y

sudo apt-get install libmetis-dev -y

sudo apt install unzip -y