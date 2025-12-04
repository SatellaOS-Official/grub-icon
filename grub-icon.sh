#!/bin/bash
shopt -s nullglob

sudo mkdir -p /usr/share/SatellaOS/grub-icon/

sudo cp ~/git-script/grub-icon/*.{jpg,png} /usr/share/SatellaOS/grub-icon/

sudo chmod 655 /usr/share/SatellaOS/grub-icon/*

mkdir -p ~/satella-picture

ln -s /usr/share/SatellaOS/grub-icon ~/satella-picture/grub-icon 2>/dev/null
