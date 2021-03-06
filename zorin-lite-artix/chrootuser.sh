#!/bin/sh

echo nows using my script to install zorin stuff
git clone https://github.com/git-fal7/zorin-os-lite-arch
cd zorin-os-lite-arch/
chmod +x ./install.sh
./install.sh -nosystemd

echo after that, we install opendoas, pamac-nosnap and mugshot

yay -S opendoas-sudo pamac-nosnap mugshot

ln -s /usr/bin/pamac /usr/bin/gnome-software
ln -s /usr/bin/xfce4-appearance-settings /usr/bin/zorin-appearance

echo removing stuff
sudo rm -rf /usr/share/xsessions/xfce.desktop

sudo rm -rf /etc/xdg/xfce4
sudo rm -rf /etc/xdg/Thunar
sudo cp -r /etc/xdg/xdg-zorin-os-lite/xfce4 /etc/xdg/
sudo cp -r /etc/xdg/xdg-zorin-os-lite/Thunar /etc/xdg/

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
