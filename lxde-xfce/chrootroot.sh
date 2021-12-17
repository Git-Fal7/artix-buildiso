#!/bin/sh

echo adding a user into the chroot
useradd -mg wheel user

echo now put a password for user "user"
passwd user

echo excellent, now we refresh our artix keys 
pacman -Sy
pacman-key --init
pacman-key --populate artix
pacman-key --populate archlinux

mv /usr/chrootuser.sh /home/user/chrootuser.sh

echo now logging in into the user, please cd into home and execute ./chrootuser.sh
su user
