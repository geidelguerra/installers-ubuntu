#!/usr/bin/env bash
wget --quiet -O - https://dl.winehq.org/wine-builds/Release.key || sudo apt-key add -
sudo apt-add-repository 'https://dl.winehq.org/wine-builds/ubuntu/'
sudo apt-get update
sudo apt-get install -y --install-recommends winehq-stable
