#!/bin/bash

sudo apt-get update

# 필수 빌드 도구 설치
sudo apt install build-essential make -y

# Qt5 기본 라이브러리 설치
sudo apt install qt5-default -y

# QtCreator 설치
sudo apt install qtcreator -y

# Qt Declarative (Qt Quick) 개발 패키지 설치
sudo apt install qtdeclarative5-dev -y


# Qt - using apt package

sudo apt install qttools5-dev libqt5x11extras5-dev libtbb-dev libboost-all-dev libopencv-dev libopencv-contrib-dev libeigen3-dev liblcm-dev cmake-gui git htop qtcreator build-essential -y

sudo apt install libqt5websockets5-dev -y

sudo apt-get install qtmultimedia5-dev -y

sudo apt-get install libquazip5-dev -y

sudo apt-get -y install sshpass -y

sudo apt install qtdeclarative5-dev -y # vtk 빌드를 위한 QT5Qml, QT5Quick 설치

sudo apt install libvtk9-qt-dev -y

sudo apt install libpcl-dev -y

sudo apt install libeigen3-dev -y

sudo apt install libopencv-dev -y
sudo apt install libopencv-contrib-dev -y

sudo apt install libboost-all-dev -y

# sudo apt upgrade
