#!/bin/bash

## System version

lsb_release -a 


## USB port

lsusb

# lsusb -v 

# lsusb -v -s 000:000

### status check
# if not install then,
# sudo apt install htop

# htop

## file system, disk check
df -h


## ram check
free -h

## 시스템의 가동 시간과 현재 로드 평균을 확인할 수 있습니다.
uptime


## CPU 사용량과 I/O 장치(디스크 등)의 성능 통계를 확인할 수 있습니다.
# sudo apt install sysstat
iostat

## 시스템 메모리, 프로세스, I/O, CPU 활동에 대한 요약을 제공합니다.
vmstat

## 네트워크 연결, 라우팅 테이블, 인터페이스 통계 등의 네트워크 상태를 확인할 수 있습니다.
ss -tuln

## 시스템 부팅 및 커널 관련 메시지를 출력합니다. 시스템 부팅 시 발생한 문제나 하드웨어 관련 로그를 확인할 수 있습니다.
dmesg

## 시스템 활동 보고서를 생성할 수 있습니다

##현재 실행 중인 프로세스 목록을 확인할 수 있습니다.  ps aux 명령어를 사용하면 전체 프로세스 목록이 출력됩니다.
ps aux

