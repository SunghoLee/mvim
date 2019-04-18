set number
set nocompatible              " be iMproved, required
set autoindent
set smartindent
set tabstop=4
set shiftwidth=2
set softtabstop=4
set smarttab
set expandtab

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'jpo/vim-railscasts-theme'
Plugin 'Yggdroot/indentLine'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'morhetz/gruvbox'

call vundle#end()            " required
filetype plugin indent on    " required
colorscheme gruvbox
set background=dark

map <C-n> <ESC>:NERDTreeToggle<CR> 
nnoremap H gT
nnoremap L gt

" ctrlpvim: ignore some folders and files for finding 
let g:ctrlp_custom_ignore = {
      \ 'dir': '\.git$\|public$\|log$\|tmp$\vendor$',
      \ 'file': '\v\.(exe|sh|jar|class)$'
      \}

" ctrlpvim: setting a path where finding a file
let g:ctrlp_working_path_mode = 'ra'

" gruvbox: making background darker
let g:gruvbox_contrast_dark="hard"
