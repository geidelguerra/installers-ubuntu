#!/usr/bin/env bash
wget -O - https://dl.sinew.in/keys/enpass-linux.key | sudo apt-key add -
sudo echo "deb http://repo.sinew.in/ stable main" > /etc/apt/sources.list.d/enpass.list
sudo apt-get update
sudo apt-get install -y enpass
