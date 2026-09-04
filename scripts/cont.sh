#!/bin/bash

ARCHIVO="./.p10k.zsh"
PALABRA="os_icon               # os identifier"

# Contar cuántas veces aparece la palabra
VECES=$(grep -o "${PALABRA}" "$ARCHIVO" | wc -l)

echo -e "La palabra:\n'${PALABRA}' \n#:${VECES}"
