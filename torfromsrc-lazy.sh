#!/usr/bin/env bash

if ! [ $(id -u) = 0 ]; then
   echo "How the fuck am I supposed to do this shit without root accesss? Run me as root!"
   exit 1
fi
echo "By wssh" 
echo "btc: bc1qrqmyezam8vfxtyvny78jxga9erk0zym47zd93u"
read -n 1 -s -r -p "This script should install Tor with minimal effort."
wget https://dist.torproject.org/tor-0.4.1.6.tar.gz
tar xfvz tor-0.4.1.6.tar.gz && cd tor-0.4.1.6/
apt-get install build-essential libevent-dev libssl-dev -y
./configure 
make  
make install
echo "Tor should be installed now!"

