#!/bin/bash

# 필수 빌드 도구 설치
sudo apt install build-essential make -y

# Qt5 기본 라이브러리 설치
sudo apt install qt5-default -y

# QtCreator 설치
sudo apt install qtcreator -y

# Qt Declarative (Qt Quick) 개발 패키지 설치
sudo apt install qtdeclarative5-dev -y


# Qt - using apt package
sudo apt update

sudo apt install qttools5-dev libqt5x11extras5-dev libtbb-dev libboost-all-dev libopencv-dev libopencv-contrib-dev libeigen3-dev liblcm-dev cmake-gui git htop qtcreator build-essential -y

sudo apt upgrade
