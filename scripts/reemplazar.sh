#!/bin/bash

# Array con palabras a reemplazar
palabras_a_reemplazar=('ZSH_THEME="robbyrussell"' 'plugins=(git)')

# Array con nuevas palabras
nuevas_palabras=('ZSH_THEME="powerlevel10k/powerlevel10k"' 'plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete)')

# Ruta del archivo
archivo="/data/data/com.termux/files/home/.zshrc"

# Bucle para recorrer los arrays y realizar los reemplazos
for i in "${!palabras_a_reemplazar[@]}"; do
    # Usamos -i'' para Termux y verificar si la palabra existe antes de reemplazarla
    if grep -q "${palabras_a_reemplazar[$i]}" "$archivo"; then
        sed -i'' "s|${palabras_a_reemplazar[$i]}|${nuevas_palabras[$i]}|g" "$archivo"
    fi
done
