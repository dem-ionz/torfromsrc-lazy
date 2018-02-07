#!/usr/bin/env bash

if ! [ $(id -u) = 0 ]; then
   echo "How the fuck am I supposed to do this shit without root accesss? Run me as root!"
   exit 1
fi
read -n 1 -s -r -p "This script should install Tor with minimal effort, after it runs at the end of install, please kill it with CTRL-C and run it as a *NON-ROOT* user. Press ENTER to start."
wget https://www.torproject.org/dist/tor-0.3.2.9.tar.gz
tar xfvz tor-0.3.2.9.tar.gz && cd tor-0.3.2.9/
apt-get install build-essential libevent-dev libssl-dev -y
./configure && make && src/or/tor && make install
echo tor should be installed now!

