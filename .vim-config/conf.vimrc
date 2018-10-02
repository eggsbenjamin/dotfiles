" general config
"
set clipboard=unnamed
set statusline=%<%f%h%m%r%w%y%=%l/%L,%c\ %P\ \|\ %n
set nocompatible 
set number
set ruler
set showcmd
set relativenumber
set nowrap
set backspace=2
set shortmess+=c
set tabstop=2
set shiftwidth=2
set expandtab
set rtp+=~/.vim/bundle/Vundle.vim
set foldmethod=indent
set foldlevelstart=99
set directory=~/.vim/tmp " store all swap files here
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " disable auto-commenting
filetype off 
syntax enable

