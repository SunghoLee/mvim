set number
set nocompatible              " be iMproved, required
set autoindent
set smartindent
set tabstop=4
set shiftwidth=2
set softtabstop=4
set smarttab
set expandtab
set textwidth=80

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
Plugin 'junegunn/vim-easy-align'

call vundle#end()            " required
filetype plugin indent on    " required
colorscheme gruvbox
set background=dark
syntax on

map <C-n> <ESC>:NERDTreeToggle<CR> 
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
nnoremap H gT
nnoremap L gt

" ctrlpvim: ignore some folders and files for finding 
let g:ctrlp_custom_ignore = {
      \ 'dir':  '\.git$\|public$\|log$\|tmp$\vendor$',
      \ 'file': '\v\.(exe|sh|jar|class)$'
      \}

" ctrlpvim: setting a path where finding a file
let g:ctrlp_working_path_mode = 'ra'

" ctrlpvim: setting mru as default mode
let g:ctrlp_map='<C-p>'

" ctrlpvim: removing the limit of maxinum number of files
let g:ctrlp_max_files=0

" gruvbox: making background darker
let g:gruvbox_contrast_dark="hard"
