#!/bin/bash
shopt -s nullglob

# SatellaOS GRUB simgesi dizinini oluştur
sudo mkdir -p /usr/share/SatellaOS/grub-icon/

# GRUB simgesi dosyalarını kopyala
sudo cp ~/git-script/grub-icon/*.{jpg,png} /usr/share/SatellaOS/grub-icon/

# Dosya izinlerini ayarla
sudo chmod 655 /usr/share/SatellaOS/grub-icon/*

# Kullanıcı Pictures klasörüne sembolik link oluştur
ln -s /usr/share/SatellaOS/grub-icon "$(xdg-user-dir PICTURES)/grub-icon" 2>/dev/null

echo "✔ GRUB simgesi başarıyla yüklendi!"
