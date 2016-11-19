"	config

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

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

inoremap jk <Esc>
inoremap JK <Esc>

filetype off
syntax enable

call vundle#begin()

	"	misc

	Plugin 'scrooloose/nerdtree'
  Plugin 'ternjs/tern_for_vim'
	Plugin 'Valloric/YouCompleteMe'
  Plugin 'editorconfig/editorconfig-vim'

  " git

  Plugin 'airblade/vim-gitgutter'

	"	syntax 

	Plugin 'pangloss/vim-javascript', { 'for' : 'javascript' }
	Plugin 'mxw/vim-jsx', { 'for' : 'javascript' }

	"	javascript 

	Plugin 'jelera/vim-javascript-syntax', { 'for' : 'javascript' }
	Plugin 'crusoexia/vim-monokai'

  " golang

  Plugin 'fatih/vim-go'

	"	html

	Plugin 'mattn/emmet-vim'

	"	sass/css
	
	Plugin 'cakebaker/scss-syntax.vim'

	"	markdown

	Plugin 'shime/vim-livedown'

call vundle#end()

"	plugin dependent config

"	jsx

let g:jsx_ext_required = 0
let g:syntastic_javascript_checkers = ['eslint']

"	colour scheme

colorscheme monokai

"	livedown

let g:livedown_autorun = 0
let g:livedown_open = 1
let g:livedown_port = 1905

"	emmet-vim

let g:user_emmet_install_global = 0
autocmd FileType html,css,scss,jsx EmmetInstall

" nerd-tree

let NERDTreeShowHidden=1
