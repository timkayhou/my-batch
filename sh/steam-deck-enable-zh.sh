#!/bin/sh
sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -S glibc --noconfirm --ask=4
sudo sed -i s/#zh/zh/ /etc/locale.gen
sudo locale-gen
sudo locale -a | grep "zh_..." | sudo tee -a /etc/locale.conf
sudo sed -i s/^zh/LANG=zh/ /etc/locale.conf
