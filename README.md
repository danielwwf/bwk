# SHN Installer

`bash <( wget -qO - https://raw.githubusercontent.com/kewagi/bwk/master/prepare.sh )`

#### raspi-config settings

- change password
- wifi (if needed)
    - If you started with Ethernet and want to use wifi you will need to change wifi country
- locale / keyboard settings
- change keyboard layout (optional)
- advanced:
    - expand
    - memory split 16

click finish, allow to reboot

#### After reboot
sudo bash shn.sh

Allow to sync

press ctrl + c when sync is done
