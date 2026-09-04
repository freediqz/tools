#!/bin/bash

chsh -s zsh
# Actualizar el gestor de paquetes
pkg update

# Instalar wget (opcional)
pkg install wget -y

# Instalar Zsh
pkg install zsh -y

# Cambiar shell a Zsh
chsh -s zsh

