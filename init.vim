set runtimepath^=~/.vim runtimepath+=~/.vim/after runtimepath+=~/.config/nvim/bundle/coquille
let &packpath = &runtimepath
source ~/.vimrc

au FileType coq call CoqLaunch()
au FileType coq call coquille#FNMapping()

let g:coquille_auto_move = 'true'
