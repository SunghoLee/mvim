#!/bin/bash

#for vim configuration
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
#for vim-coq plugin
git clone https://github.com/let-def/vimbufsync.git ~/.vim/pack/coq/start/vimbufsync
#copy vim configuration file
cp .vimrc ~/.vimrc
#install plugins
vim +PlugInstall +qall
