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
sudo chomd +x update_srv_remove.sh
sudo ./update_srv_remove.sh
echo "모든 작업이 완료되었습니다."

