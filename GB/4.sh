#!/bin/bash

echo "# ===================================================================== #"
echo "# 4GB SWAP-Memory is installing...                                      #"
echo "#                 *** THIS MAY TAKE SOME TIME ***                       #"
echo "# ===================================================================== #"
sudo dd if=/dev/zero of=/swap bs=1024 count=4096k
sudo mkswap /swap
sudo swapon /swap
echo " /swap       none    swap    sw      0       0 " >> /etc/fstab
sudo chown root:root /swap
sudo chmod 0600 /swap
echo "vm.swappiness=90" >> /etc/sysct1.conf
echo "# ===================================================================== #"
echo "# 4GB SWAP-Memory setup is COMPLETE!                                    #"
echo "# ===================================================================== #"
