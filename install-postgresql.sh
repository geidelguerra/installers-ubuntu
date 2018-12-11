#!/usr/bin/env bash
RELEASE_NAME=$(lsb_release -sc)
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
echo "deb http://apt.postgresql.org/pub/repos/apt/ ${RELEASE_NAME}-pgdg main" | sudo tee /etc/apt/sources.list.d/pgdg.list
sudo apt-get update
sudo apt-get install -y postgresql
