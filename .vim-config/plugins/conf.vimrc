" plugin config

  " vundle
  filetype plugin on

  " neocomplete
  let g:neocomplete#enable_at_startup = 1

  " appearance 
  let g:rehash256 = 1
  let g:molokai_original = 1
  colorscheme molokai 

  " nerdtree
  let NERDTreeShowHidden=1
  autocmd VimEnter *.go NERDTree .

  " vim-go
  let g:go_fmt_experimental = 1
