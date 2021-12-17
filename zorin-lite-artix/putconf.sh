#!/bin/sh

#start build lxde
echo building lxde profile
buildiso -p lxde -x

echo copying sudoers
cp /etc/sudoers /var/lib/artools/buildiso/lxde/artix/rootfs/etc/

rm -rf /var/lib/artools/buildiso/lxde/artix/rootfs/usr/bin/lxclipboard

echo copying scripts to build aur packages
cp ~/sudoers /var/lib/artools/buildiso/lxde/artix/rootfs/etc
cp ~/chrootroot.sh /var/lib/artools/buildiso/lxde/artix/rootfs/usr
cp ~/chrootuser.sh /var/lib/artools/buildiso/lxde/artix/rootfs/usr

echo chrooting to /var/lib/artools/buildiso/lxde/artix/rootfs
echo please execute /usr/chrootroot.sh and follow the instructions
artix-chroot /var/lib/artools/buildiso/lxde/artix/rootfs
