#!/bin/bash

# Lista de paquetes a instalar
packages=(
    "neofetch"
    "htop"
    "python"
    "python2"
    "nodejs"
    "git"
    "vim"
    "figlet"
    "bat"
    "lsd"
    "openssh"
    "tmux"
    "wget"
)

# Actualizar la lista de paquetes
echo "Actualizando la lista de paquetes..."
pkg update -y
pkg upgrade -y

# Instalar cada paquete en la lista
for package in "${packages[@]}"; do
    echo "Instalando $package..."
    pkg install -y "$package"
done

echo "Todos los paquetes fueron instalados correctamente."
