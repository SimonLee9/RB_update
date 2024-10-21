#!/bin/bash

# 백업
cp /etc/udev/rules.d/99-usb-serial.rules /etc/udev/rules.d/99-usb-serial.rules.bak

# 설정할 변수들
ID_VENDOR="2109"
ID_PRODUCT="0812"
SYMLINK_NAME="ttyCB0"
RULES_FILE="/etc/udev/rules.d/99-usb-serial.rules"

# USB 장치 검색
echo "idVendor=$ID_VENDOR 및 idProduct=$ID_PRODUCT 인 USB 장치를 검색합니다..."

DEVICE_FOUND=false

for sysdevpath in $(find /sys/bus/usb-serial/devices/ -name 'tty*' -print); do
    (
        syspath=$(udevadm info -q path -n $(basename $sysdevpath))
        if udevadm info -a -p $syspath | grep -q "ATTRS{idVendor}==\"$ID_VENDOR\"" && udevadm info -a -p $syspath | grep -q "ATTRS{idProduct}==\"$ID_PRODUCT\""; then
            echo "해당 USB 장치를 찾았습니다: $(basename $sysdevpath)"
            
            # KERNELS 값 추출
            KERNELS_VALUE=$(udevadm info -a -p $syspath | grep 'KERNELS=="[0-9a-zA-Z.-]*"' | head -n 1 | sed 's/^[ \t]*//')
            echo "KERNELS 값: $KERNELS_VALUE"
            
            # udev 규칙 작성
            RULE="SUBSYSTEM==\"tty\", $KERNELS_VALUE, ATTRS{idVendor}==\"$ID_VENDOR\", ATTRS{idProduct}==\"$ID_PRODUCT\", SYMLINK+=\"$SYMLINK_NAME\""
            echo "생성된 udev 규칙: $RULE"
            
            # 규칙 파일 백업
            if [ -f "$RULES_FILE" ]; then
                sudo cp "$RULES_FILE" "${RULES_FILE}.bak"
                echo "기존 규칙 파일을 백업했습니다: ${RULES_FILE}.bak"
            fi
            
            # 규칙 파일에 추가
            echo "$RULE" | sudo tee -a "$RULES_FILE"
            echo "udev 규칙을 $RULES_FILE 에 추가했습니다."
            
            # udev 규칙 재로드
            sudo udevadm control --reload
            sudo udevadm trigger
            echo "udev 규칙을 재로드했습니다."
            
            DEVICE_FOUND=true
            break
        fi
    )
done

if [ "$DEVICE_FOUND" = false ]; then
    echo "idVendor=$ID_VENDOR 및 idProduct=$ID_PRODUCT 인 USB 장치를 찾을 수 없습니다."
    exit 1
fi
