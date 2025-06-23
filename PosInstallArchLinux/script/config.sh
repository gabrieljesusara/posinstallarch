#!/bin/bash

#repositories
source loading.sh

# Start
peito &
typing_effect " 		         C O N F I G U R I N G " "${RED}"
echo
echo

# ----------------- ATIVANDO SERVIÇOS -----------------

echo ">> Habilitando serviços importantes..."
systemctl enable NetworkManager
timedatectl set-ntp true
systemctl enable cups
systemctl enable bluetooth
systemctl enable ufw
systemctl enable fstrim.timer

# ----------------- CONFIGURANDO UFW -----------------
echo ">> Configurando UFW (Firewall)..."
sudo ufw default deny incoming
sudo ufw default deny outgoing
sudo ufw allow out 53      # DNS
sudo ufw allow out 80      # HTTP
sudo ufw allow out 443    # HTTPS
sudo ufw enable

# ----------------- CONFIGURANDO FLATPAK -----------------
echo ">> Configurando Flatpak e Flathub..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# ----------------- CONFIGURAÇÃO VIRTUALBOX -----------------
echo ">> Configurando VirtualBox..."
modprobe vboxdrv || true
modprobe vboxnetflt || true
modprobe vboxnetadp || true

# ----------------- CONFIGURAÇÃO AUR E GOOGLE CHROME -----------------
echo ">> Instalando YAY (AUR Helper)..."
cd /home/Downloads && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si --noconfirm"

echo ">> Instalando Google Chrome via AUR..."
sudo -u gabriel yay -S --noconfirm google-chrome


# ----------------- CONCLUSAO -----------------
echo ">> Configuração finalizada. Reinicie o sistema."
