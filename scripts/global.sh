# Copiar el archivo global a home
cp -f ./scripts/termux_global "$HOME/.termux_global"
cp -f ./scripts/tmux.conf "$HOME/.tmux.conf"

# Archivo de configuración de Zsh
archivo="$HOME/.zshrc"

# Línea a agregar para cargar variables y alias globales
cadena='[ -f "$HOME/.termux_global" ] && source "$HOME/.termux_global"'

# Agregar al final de .zshrc si no existe ya
grep -qxF "$cadena" "$archivo" || echo "$cadena" >> "$archivo"

# Recargar .zshrc
source "$HOME/.zshrc"


