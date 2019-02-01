#!/bin/sh
if ! [ $(id -u) = 0 ]; then
   echo "Ce script doit être éxécuter en tant que root, utilisez la commande sudo pour éxécuter ce script." 
   exit 1
fi
echo "dtoverlay=w1-gpio" | tee -a /boot/config.txt
echo "wire" | tee -a /etc/modules
echo "w1-gpio" | tee -a /etc/modules
echo "w1-therm" | tee -a /etc/modules
echo "1wire activé ! (au prochain reboot)" 