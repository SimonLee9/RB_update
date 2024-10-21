#!/bin/bash

# 백업
cp /etc/udev/rules.d/99-usb-serial.rules /etc/udev/rules.d/99-usb-serial.rules.bak

# 새로운 규칙 파일 작성
cat <<EOL > /etc/udev/rules.d/99-usb-serial.rules
SUBSYSTEM=="tty", KERNELS=="1-1.1", ATTRS{idVendor}=="10c4", ATTRS{idProduct}=="ea60", SYMLINK+="ttyRP0"
SUBSYSTEM=="tty", KERNELS=="1-1.4", ATTRS{idVendor}=="067b", ATTRS{idProduct}=="2303", SYMLINK+="ttyBL0"
SUBSYSTEM=="tty", KERNELS=="1-1.2", ATTRS{idVendor}=="2109", ATTRS{idProduct}=="0812", SYMLINK+="ttyCB0"
EOL

# udev 규칙 재로드
udevadm control --reload

echo "udev 규칙이 업데이트되었습니다."
