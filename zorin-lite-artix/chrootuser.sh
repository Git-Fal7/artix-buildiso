#!/bin/sh

echo now we are getting the pkg of yay
git clone https://aur.archlinux.org/yay

echo now we cd onto yay
cd ~/yay

echo now we make the yay pkg
makepkg -si

#echo after that, we install opendoas-sudo
#yay -S opendoas-sudo

echo installing docklike st and brave
yay -S st brave-bin pnmixer

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
