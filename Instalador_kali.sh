#!/data/data/com.termux/files/usr/bin/bash

# Script automatizado para instalação do NetHunter no Termux
echo "Iniciando a atualização do sistema e instalação do NetHunter..."

# Executa os comandos em sequência
pkg update -y && pkg upgrade -y && pkg install -y curl

# Baixa o script oficial do repositório
curl -fsSLO https://raw.githubusercontent.com/jorexdeveloper/termux-nethunter/main/install-nethunter.sh

# Executa o instalador
bash install-nethunter.sh
