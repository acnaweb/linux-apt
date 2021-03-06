#!/usr/bin/env bash

echo 'deb http://sft.if.usp.br/debian/ stretch main contrib non-free' >> /etc/apt/sources.list
apt update 
apt upgrade --fix-missing
apt -y install firmware-linux 
apt -y install make perl 

# apt --fix-broken install

apt -y install build-essential

apt install firmware-linux-nonfree
apt install firmware-misc-nonfree

# Lenovo
# apt -y install firmware-atheros firmware-realtek

# https://askubuntu.com/questions/937254/cannot-install-build-essential-gcc-g-after-upgrade-to-17-04
# apt install aptitude
# dpkg --force-all -P gcc-7-base
# dpkg --force-all -P gcc-7-base:i386
# aptitude install build-essential

dpkg --add-architecture i386
apt -y install llvm-4.0 clang-4.0

reboot


# KVM emulator for Android Studio
# https://wiki.debian.org/KVM
apt install -y qemu-kvm libvirt-clients qemu-utils libvirt-daemon-system
# adduser <youruser> libvirt
# adduser <youruser> libvirt-qemu

# adduser ac libvirt
# adduser ac libvirt-qemu
virsh list --all
# Android test - $HOME/Android/Sdk/tools/emulator -accel-check


apt -y install gconf2
apt -y install libappindicator1

apt -y install linux-headers-amd64 
apt -y install linux-headers-4.9.0-11-amd64




