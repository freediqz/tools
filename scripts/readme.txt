####

pkg install wget

sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"


git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k


git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions



git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting



git clone https://github.com/marlonrichert/zsh-autocomplete.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autocomplete






p10k configure

######### para .zshrc

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting zsh-autocomplete)

##### para .termux/termux.properties

ont.ttf: ~/.termux/font/MesloLGS_NF_Regular.ttf


########## para configurar p10k

p10k configure


###########$## para los iconos de las carpetas
pkg install lsd
alias ls="lsd"



################ para cambiar el formato de time
POWERLEVEL9K_TIME_FORMAT

######## para cambiar el simbolo del prompt despues de dar enter


POWERLEVEL9K_PROMPT_CHAR

#######$$$ para el icono
POWERLEVEL9K_OS_ICON_CONTENT_EXPANSION

echo -e "Arch Linux \uf303   CentOS \uf304   Docker \uf308   Red Hat \uf316   SUSE \uf317   Tux \uf17c\nAlpine Linux \uf300   FreeBSD \uf30c   OpenBSD \uf319   Ubuntu \uf31c   Debian \ue77d   Fedora \uf30a   Gentoo \uf30b   Windows \uf17a   Apple \uf179   Kali \uf31f Linux Mint \uf30e Android \uf17b"


############## para cambiar color del logo ico
POWERLEVEL9K_OS_ICON_FOREGROUND

- Rojo intenso: 11
- Verde intenso: 12
- Amarillo intenso: 13
- Azul intenso: 14
- Magenta intenso: 15
- Cian intenso: 16
- Blanco intenso: 17

- Negro: 0
- Rojo: 1
- Verde: 2
- Amarillo: 3
- Azul: 4
- Magenta: 5
- Cian: 6
- Blanco: 7

- Blanco: 255

####### configurar vista de las ultimas dos carpetas #######
#230 278

typeset -g POWERLEVEL9K_SHORTEN_STRATEGY="truncate_to_last"
typeset -g POWERLEVEL9K_SHORTEN_DIR_LENGTH=2


#### Editar en .zshrc #####
alias ls='lsd --group-dirs first'
alias cat='bat'