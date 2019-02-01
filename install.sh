#!/bin/sh
if ! [ $(id -u) = 0 ]; then
   echo "Ce script doit être éxécuter en tant que root, utilisez la commande sudo pour éxécuter ce script." 
   exit 1
fi
echo "Téléchargement de node.js"
curl -o node-v9.9.0-linux-armv6l.tar.gz https://nodejs.org/dist/v9.9.0/node-v9.9.0-linux-armv6l.tar.gz
echo "Extraction de l'archive..."
tar -xzvf node-v9.9.0-linux-armv6l.tar.gz
echo "Installation des fichiers..."
cp -r node-v9.9.0-linux-armv6l/* /usr/local/
echo "suppression des fichiers inutiles..."
rm -rf node-v9.9.0-linux-armv6l.tar.gz
rm -rf node-v9.9.0-linux-armv6l
echo "Installation de Git"
apt-get update
apt-get -y install git
echo "Installation terminée !" 