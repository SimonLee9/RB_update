#!/bin/bash


sudo apt install dkms

git clone https://github.com/gnab/rtl8812au.git

sudo cp -r rtl8812au /usr/src/rtl8812au-4.2.2

sudo dkms add -m rtl8812au -v 4.2.2

sudo dkms build -m rtl8812au -v 4.2.2

sudo dkms install -mrtl8812au -v 4.2.2

sudo modprobe 8812au


