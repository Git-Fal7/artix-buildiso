#!/bin/sh

echo now we are getting the pkg of yay
git clone https://aur.archlinux.org/yay

echo now we cd onto yay
cd ~/yay

echo now we make the yay pkg
makepkg -si

echo after that, we install opendoas-sudo
yay -S opendoas-sudo

echo nows using my script to install zorin stuff
git clone https://github.com/git-fal7/zorin-os-lite-arch
cd zorin-os-lite-arch
chmod +x ./install.sh
./install.sh -artix

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
