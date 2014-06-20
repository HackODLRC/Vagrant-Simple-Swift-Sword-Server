#!/usr/bin/env bash

echo "Updating apt..."
sudo apt-get update
echo "Done!"

echo "Installing git..."
sudo apt-get -y install git
echo "Done!"

echo "Installing pip..."
wget https://raw.github.com/pypa/pip/master/contrib/get-pip.py
sudo python get-pip.py
echo "Done!"
echo "Installing virtualenv..."
sudo pip install virtualenv 
echo "Done!"

virtualenv ssss-virtualenv
cd ssss-virtualenv
echo "Making a virtualenv and installing ODLRC-ssss..."
git clone https://github.com/HackODLRC/Simple-Swift-Sword-Server.git
echo "Done!"

chown -R vagrant:vagrant /home/vagrant
apt-get install build-essential python-dev libxml2 libxslt1-dev
