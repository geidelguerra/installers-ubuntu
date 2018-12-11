#!/usr/bin/env bash
sudo su
apt-get update
apt-get install -y gcc make
mkdir -p /media/cdrom
mount /dev/cdrom /media/cdrom
/media/cdrom/VBoxLinuxAdditions.run

echo "Reboot to apply changes"
