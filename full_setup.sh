#!/bin/bash

#wget https://raw.githubusercontent.com/DonLakeFlyer/VHFCollarCompanion/master/rpi_setup.sh

echo "*** Install git, cmake"
sudo apt-get install git cmake -y

echo "*** Install MAVSdk"
wget https://github.com/mavlink/MAVSDK/releases/download/v1.4.12/libmavsdk-dev_1.4.12_ubuntu20.04_amd64.deb
sudo dpkg -i libmavsdk-dev_1.4.12_ubuntu20.04_amd64.deb
rm libmavsdk-dev_1.4.12_ubuntu20.04_amd64.deb

echo "*** Create repos directory"
cd ~
if [ ! -d repos ]; then
    mkdir repos
fi
cd ~/repos
