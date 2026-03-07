#!/data/data/com.termux/files/usr/bin/bash

# Solicita permissão de armazenamento (aparecerá um pop-up no Android)
echo "Solicitando acesso ao armazenamento..."
termux-setup-storage

# Aguarda um momento para o usuário aceitar a permissão
sleep 2

echo "Iniciando atualizações e instalação do Kali NetHunter..."

# Executa a sequência de comandos solicitada
apt update && \
pkg install wget -y && \
pkg upgrade -y -o Dpkg::Options::="--force-confnew" && \
clear && \
wget -qO install.sh https://raw.githubusercontent.com/xiv3r/Kali-Linux-Termux/refs/heads/main/kali_nethunter/install.sh && \
chmod +x install.sh && \
bash install.sh
