#/bin/bash

archivo="/data/data/com.termux/files/home/.zshrc"

cadena="alias ls='lsd --group-dirs first'"
grep -qxF "$cadena" "$archivo" || echo "$cadena" >> "$archivo"
cadena="alias cat='bat'"

grep -qxF "$cadena" "$archivo" || echo "$cadena" >> "$archivo"


archivo="/data/data/com.termux/files/home/.termux/termux.properties"
cadena='font.ttf: ~/.termux/font/MesloLGS_NF_Regular.ttf'
grep -qxF "$cadena" "$archivo" || echo "$cadena" >> "$archivo"





rm -f /data/data/com.termux/files/usr/etc/motd
