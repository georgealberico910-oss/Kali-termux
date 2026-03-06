#!/bin/bash

echo "🚀 Iniciando a preparação do ambiente Kali NetHunter no Termux..."

# 1. Destravar pacotes, atualizar e instalar o wget
# O -o Dpkg::Options::="--force-confnew" evita que o instalador pare pedindo confirmação manual
apt update && pkg install wget -y && pkg upgrade -y -o Dpkg::Options::="--force-confnew"

# 2. Limpar a tela para o instalador do NetHunter
clear

echo "📥 Baixando e executando o script oficial do Kali NetHunter..."

# 3. Baixar o script de instalação, dar permissão e executar
wget -qO install.sh https://raw.githubusercontent.com/xiv3r/Kali-Linux-Termux/refs/heads/main/kali_nethunter/install.sh && \
chmod +x install.sh && \
bash install.sh

echo "✅ Script finalizado. Siga as instruções na tela do NetHunter."
