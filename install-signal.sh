#!/usr/bin/env bash
RELEASE_NAME=$(lsb_release -cs)
curl -s https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt $RELEASE_NAME main" | sudo tee -a /etc/apt/sources.list.d/signal.list
sudo apt update
sudo apt install -y signal-desktop
