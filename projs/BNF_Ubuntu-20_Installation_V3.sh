#!/bin/sh

# File Name: Hemo_Prediction_Ubuntu-20_Installation.sh
# Author: Taohan Zhu
# Reference: https://espressomd.github.io/doc/installation.html
########################################
# Step 1: Clone repo
########################################
git clone --depth=1 https://github.com/mrazizadeh/espresso
cd espresso

########################################
# Step 2:
# EspressoMd Dependencies
########################################
ESPResSo_LIST="build-essential cmake cython3 python3-numpy \
  libboost-all-dev openmpi-common fftw3-dev libhdf5-dev libhdf5-openmpi-dev \
  python3-opengl libgsl-dev cmake-curese-gui"

sudo apt-get update
sudo apt install cmake
sudo apt install -y ESPResSo_LIST


# CUDA SDK that allows Nvidia GPU Acceleration
sudo apt install -y nvidia-cuda-toolkit

# Install Python3 & Python a virual environment
sudo apt install python3 python3-venv

# Install additional ESPResSo's requirements
sudo apt install build-essential cmake cython3 python3-numpy \
  libboost-all-dev openmpi-common fftw3-dev libhdf5-dev libhdf5-openmpi-dev \
  python3-opengl libgsl-dev

# To get GCC-6 (make requires GCC no higher than 6)
sudo apt-get install gcc-6 g++-6 g++-6-multilib gfortran-6
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6
sudo update-alternatives --config gcc

# Compiling ESPResSo 
mkdir build
cd build
cmake ..
# make



# Not needed at the moment
# sudo apt install python3-matplotlib python3-scipy python3-pint ipython3 jupyter-notebook
########################################
