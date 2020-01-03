#!/bin/bash

#for vim configuration
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
#for vim-coq plugin
git clone https://github.com/let-def/vimbufsync.git ~/.vim/pack/coq/start/vimbufsync
#copy vim configuration file
cp .vimrc ~/.vimrc
#install plugins
vim +PluginInstall +qall
