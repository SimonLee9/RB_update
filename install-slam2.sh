#!/bin/bash

# https://docs.luxonis.com/projects/api/en/latest/install/
sudo wget -qO- https://docs.luxonis.com/install_dependencies.sh | bash

# Laki
sudo apt install rapidjson-dev

# c++ sdk install
git clone https://github.com/luxonis/depthai-core.git
cd depthai-core/
git checkout v2.25.1
git submodule update --init --recursive
mkdir build
cd build
cmake ..
cmake-gui ..

