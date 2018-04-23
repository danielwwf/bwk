# SHN Installer

Log in to your Raspberry Pi via SSH, then run this line:
```
bash <( wget -qO - https://raw.githubusercontent.com/kewagi/bwk/master/prepare.sh )```

The installer will prepare some things, then open the Raspberry configuration tool _raspi-config_ - change the following settings:

```
* Change your password              1 Change User Password
* Optional: Set up your WiFi        2 Network Options  -> N2 WiFi
* Expand your filesystem            7 Advanced Options -> A1 Expand Filesystem
* Optional: Set GPU Memory to 16MB  7 Advanced Options -> A3 Memory Split
```

Select "Finish" and press Enter, your Raspberry will reboot. Wait for a minute, log into your Raspberry again, then run this command:

```
sudo bash shn.sh
```

Now the Secure Home Node will be installed. After a while, you will see the following line:

```
I will open the getinfo screen for you in watch mode now, close it with CTRL + C once we are fully synced.
```

Then you will see the status of bulwarkd syncing. Once the sync is complete (when the number of blocks displayed is up to the current block height), press `Ctrl+c`
to finish the installation. You will be shown some information, among that the configuration line you need to add your your _masternode.conf_ on your local wallet. Press Enter to restart one more time.

While the Raspberry Pi is rebooting, add the line you got from the script to _masternode.conf_, restart your wallet, open the debug console and start your masternode with the command

```
startmasternode alias false <mymnalias>
```

where <mymnalias> is the name of your masternode, TORNODE by default.

Congratulations, you're done!
