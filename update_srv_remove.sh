#!/bin/bash

sudo apt-get update

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

# 팀뷰어 설치 파일을 Home 경로에 다운로드
wget -P ~/ https://download.teamviewer.com/download/linux/teamviewer_amd64.deb

# 다운로드한 설치 파일을 이용하여 팀뷰어 설치
sudo apt install ~/teamviewer_amd64.deb -y

# 자기 자신의 파일 삭제
rm -- "$0"
