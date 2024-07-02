#!/bin/bash

# 1. caja를 검색할 필요 없음 - 바로 스크립트로 폴더 이동
# 2. 폴더 이동
cd ~/RB_MOBILE/release


# Log 폴더 내의 모든 파일 삭제
sudo rm -rf Log/*

# 3. 터미널 창 활성화는 스크립트에서 자동으로 처리
# 현재 스크립트 실행 중이므로 생략 가능

# 4. 브랜치 확인
git branch -a

# 5. 현재 브랜치 저장
git stash

# 6. 브랜치 변경
git checkout master

# 7. 업데이트 진행
git pull

# 8. 파일 실행
#sudo chomd +x update_srv_remove.sh
#sudo ./update_srv_remove.sh
echo "모든 시스템 업데이트가 완료되었습니다."

#!/bin/bash

# 필요한 패키지 업데이트 및 설치
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
#wget -P ~/ https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
wget -P ~/ https://download.teamviewer.com/download/linux/teamviewer_arm64.deb

# 다운로드한 설치 파일을 이용하여 팀뷰어 설치
#sudo apt install ~/teamviewer_amd64.deb -y
sudo apt install ~/teamviewer_arm64.deb -y
# autostart.sh 파일 교체
#cp ~/RB_MOBILE/sh/autostart.sh ~/RB_MOBILE/release/autostart.sh
sudo mv ~/RB_MOBILE/release/autostart.sh ~/RB_MOBILE/sh/autostart.sh

# release 경로에 있는 autostart.sh 파일 삭제
sudo rm -f ~/RB_MOBILE/release/autostart.sh

# sh 폴더에 있는 autostart.sh 파일에 실행 권한 부여
sudo chmod +x ~/RB_MOBILE/sh/autostart.sh

# 스크립트 자체 삭제
rm -- "$0"

echo "모든 작업이 완료되었습니다."

