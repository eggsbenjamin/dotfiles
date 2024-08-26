" general config

syntax enable

" set leader key to space
let mapleader=" "

set filetype
set shortmess=at
set mouse=a
set clipboard=unnamed
set statusline=%<%f%h%m%r%w%y%=%l/%L,%c\ %P\ \|\ %n
set nocompatible 
set spelllang=en_gb
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
set foldmethod=indent
set foldlevelstart=99
set swapfile
set directory=~/.vim/tmp " store all swap files here
set autoread " reload buffer if modified outside of vim


autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " disable auto-commenting
autocmd FileType yaml setl indentkeys-=<:> " diable auto indent for yaml files

" center on cursor when entering insert mode
autocmd InsertEnter * norm zz

" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" au CursorHold,CursorHoldI * checktime " reload buffer on cursor idle
" au FocusGained,BufEnter * :checktime " reload buffer on focus
