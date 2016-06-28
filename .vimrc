"	config

set nocompatible 
set number
set backspace=2
set rtp+=~/.vim/bundle/Vundle.vim

nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

filetype off
syntax enable

call vundle#begin()

	"	generic plugins

	Plugin 'pangloss/vim-javascript', { 'for' : 'javascript' }

	"	javascript plugins

	Plugin 'jelera/vim-javascript-syntax', { 'for' : 'javascript' }
	Plugin 'crusoexia/vim-monokai'
	Plugin 'Valloric/YouCompleteMe'

	"	gitHub markdown

	Plugin 'shime/vim-livedown'

call vundle#end()

"	plugin dependent config

colorscheme monokai

"	livedown

let g:livedown_autorun = 0
let g:livedown_open = 1
let g:livedown_port = 1337
