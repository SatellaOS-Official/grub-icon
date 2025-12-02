#!/bin/bash
shopt -s nullglob

# SatellaOS GRUB simgesi dizinini oluştur
sudo mkdir -p /usr/share/SatellaOS/grub-icon/

# GRUB simgesi dosyalarını kopyala
sudo cp ~/git-script/grub-icon/*.{jpg,png} /usr/share/SatellaOS/grub-icon/

# Dosya izinlerini ayarla
sudo chmod 655 /usr/share/SatellaOS/grub-icon/*

# Kullanıcı için özel satella-picture klasörü oluştur
mkdir -p ~/satella-picture

# Bu klasöre sembolik link ekle
ln -s /usr/share/SatellaOS/grub-icon ~/satella-picture/grub-icon 2>/dev/null

echo "✔ GRUB simgesi başarıyla yüklendi!"
