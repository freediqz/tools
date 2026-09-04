#!/data/data/com.termux/files/usr/bin/zsh


# Llamada a varios scripts con rutas parciales

# Importa variables y colores globales
source ./scripts/global.sh
termux-reload-settings

# Ejecuta los otros scripts
./scripts/reemplazar.sh
./scripts/agregarLineas.sh
./scripts/copiarFont.sh
./scripts/copiarProp.sh
./scripts/packages.sh
./scripts/buscar.sh

termux-reload-settings

# Mensaje final
echo -e "${BYELLOW}Para configurar:${RESET} ${BCYAN}\np10k configure${RESET}"





