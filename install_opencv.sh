#!/bin/bash

# OpenCV 설치 스크립트

# 패키지 목록 업데이트
sudo apt update

# 필수 종속성 설치
sudo apt install -y build-essential cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev

# OpenCV 소스 코드 다운로드
cd ~
git clone https://github.com/opencv/opencv.git
cd opencv
# 원하는 OpenCV 버전으로 체크아웃 (예: 4.5.2)
git checkout 4.5.2

# 빌드 디렉토리 생성 및 이동
mkdir build && cd build

# CMake를 이용한 빌드 환경 설정
cmake ..

# make를 이용한 컴파일 (코어 수에 따라 -j 옵션 조정)
make -j$(nproc)

# 컴파일된 라이브러리 설치
sudo make install

# 설치 완료 메시지
echo "OpenCV 설치가 완료되었습니다."
