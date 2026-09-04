#!/bin/bash

pkg install -y vim-python python python-pip nodejs

mkdir -p ~/.vim/autoload ~/.vim/plugged

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pip install --upgrade black jedi 'python-language-server[all]'

npm install -g pyright typescript typescript-language-server prettier
