#!/usr/bin/env bash
sudo apt-key adv --recv-keys --keyserver hkp://keyserver.ubuntu.com:80 0xcbcb082a1bb943db
sudo add-apt-repository "deb [arch=amd64,i386,ppc64el] http://mariadb.mirror.iweb.com/repo/10.2/ubuntu $(lsb_release -cs) main"
sudo apt-get update
sudo apt-get install -y mariadb
