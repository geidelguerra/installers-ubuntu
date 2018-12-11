#!/usr/bin/env bash
# See https://goaccess.io
RELEASE_NAME=$(lsb_release -cs)
echo "deb http://deb.goaccess.io/ $RELEASE_NAME main" | sudo tee -a /etc/apt/sources.list.d/goaccess.list
wget -O - https://deb.goaccess.io/gnugpg.key | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y goaccess
