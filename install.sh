#!/bin/sh

echo "Installing Adafruit code and data in /boot..."
cd /tmp
curl -LO https://github.com/adafruit/Pi_Eyes/archive/master.zip
unzip master.zip
# Moving between filesystems requires copy-and-delete:
cp -r Pi_Eyes-master /boot/Pi_Eyes
rm -rf master.zip Pi_Eyes-master
echo "Installing gpio-halt in /usr/local/bin..."
curl -LO https://github.com/adafruit/Adafruit-GPIO-Halt/archive/master.zip
unzip master.zip
cd Adafruit-GPIO-Halt-master
make
mv gpio-halt /usr/local/bin
cd ..
rm -rf Adafruit-GPIO-Halt-master
