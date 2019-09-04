#!/bin/bash

#for vim configuration
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/.vimrc
vim +PluginInstall +qall

#for nvim configuration
mkdir -p ~/.config/nvim/bundle
cp init.vim ~/.config/nvim/
git clone https://framagit.org/tyreunom/coquille.git ~/.config/nvim/bundle/coquille
nvim +UpdateRemotePlugins +q
