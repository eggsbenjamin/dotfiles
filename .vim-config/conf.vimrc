" general config

filetype off 
syntax enable

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
set rtp+=~/.vim/bundle/Vundle.vim
set foldmethod=indent
set foldlevelstart=99
set directory=~/.vim/tmp " store all swap files here
" set autoread " reload buffer if modified outside of vim

" https://github.com/gillescastel/latex-snippets
setlocal spell
inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " disable auto-commenting
autocmd FileType yaml setl indentkeys-=<:> " diable auto indent for yaml files

" https://unix.stackexchange.com/questions/149209/refresh-changed-content-of-file-opened-in-vim/383044#383044
" au CursorHold,CursorHoldI * checktime " reload buffer on cursor idle
" au FocusGained,BufEnter * :checktime " reload buffer on focus
