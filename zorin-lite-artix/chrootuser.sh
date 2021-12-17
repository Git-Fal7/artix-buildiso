#!/bin/sh

echo nows using my script to install zorin stuff
git clone https://github.com/git-fal7/zorin-os-lite-arch
cd zorin-os-lite-arch/
chmod +x ./install.sh
./install.sh -nosystemd

echo after that, we install opendoas-sudo
yay -S opendoas-sudo

echo removing orphan packages
sudo pacman -Rsn $(pacman -Qdtq)

echo removing chrootroot
sudo rm -rf /usr/chrootroot.sh

echo removing chrootuser
rm -rf ~/chrootuser.sh

echo exiting chroot
exit

userdel user
rm -rf /home/user
exit
