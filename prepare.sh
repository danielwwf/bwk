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

read -p "READ THIS FOR MORE INFO <insert link here> THEN PRESS ENTER TO CONTINUE"

echo "Starting raspi-config..."
sleep 3
sudo raspi-config

sleep 1
sudo reboot
