call plug#begin('~/.vim/bundle')
  " misc
  Plug 'scrooloose/nerdtree'
  Plug 'Shougo/neocomplete', { 'tag' : 'ver.2.1' }

  " snippets
  Plug 'sirver/ultisnips'
  Plug 'honza/vim-snippets'

  " appearance
  Plug 'fatih/molokai'

  " tex/latex
  Plug 'lervag/vimtex'
  Plug 'KeitaNakamura/tex-conceal.vim'

  " git
  Plug 'airblade/vim-gitgutter'

  " go
  Plug 'fatih/vim-go', { 'tag':'v1.23', 'do': ':GoUpdateBinaries' }

  " C/C++
  Plug 'neoclide/coc.nvim', {'branch': 'release'}

  " terraform
  Plug 'hashivim/vim-terraform'

  " bash
  Plug 'vim-scripts/bats.vim'


call plug#end()
