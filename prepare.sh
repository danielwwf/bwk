#!/bin/#!/usr/bin/env bash
clear

echo "Upating system..."
sleep 1
sudo apt-get update -y
sleep 1
echo "Upgrading system..."
sleep 1
sudo apt-get upgrade -y
sleep 1
echo "Running distupgrade..."
sleep 1
sudo apt-get dist-upgrade -y
sleep 1
echo "Downloading SHN installer..."
sleep 1
sudo wget https://raw.githubusercontent.com/kewagi/bwk/master/shn.sh
sudo chmod 777 shn.sh

clear

cat << EOL

We will now start raspi-config. Please change the following settings:

* Change your password          1 Change User Password
* Optional: Set up your WiFi    2 Network Options  -> N2 WiFi
* Expand your filesystem        7 Advanced Options -> A1 Expand Filesystem
* Set GPU Memory to 16          7 Advanced Options -> A3 Memory Split

Then select "Finish"

EOL
read -p "Press Enter to continue."

echo "Starting raspi-config..."
sleep 1
sudo raspi-config

sleep 1
sudo reboot
