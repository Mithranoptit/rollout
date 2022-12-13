#!/bin/bash
mkdir t3mp
echo "Downloading the source"
cd t3mp
wget https://github.com/Mithranoptit/rollout/raw/main/installer.xml
wget https://github.com/Mithranoptit/rollout/raw/main/bdconfigure
wget https://github.com/Mithranoptit/rollout/raw/main/installer
wget https://github.com/Mithranoptit/rollout/raw/main/KcsSetup.sh
echo "installing Bitdefender"
chmod 777 installer
./installer
echo "installing Kasaya"
chmod 777 KcsSetup.sh
./KcsSetup.sh
zenity --warning --width 300 --text "Reboot Required"
