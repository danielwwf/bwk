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
sudo wget https://raw.githubusercontent.com/whywefight/bwk/master/shn.sh
sudo chmod 777 shn.sh
echo "Preparations complete. System will reboot in 5 seconds."
sleep 5
sudo reboot
