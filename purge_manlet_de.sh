#!/bin/sh

sudo apt install tasksel
sudo tasksel install xubuntu-core
clear
sudo apt purge snap
rm -rf ~/snap
sudo rm -rf /snap
sudo rm -rf /var/snap
sudo rm -rf /var/lib/snap
sudo apt autoremove --purge snapd
