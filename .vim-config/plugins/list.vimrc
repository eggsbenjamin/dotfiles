call plug#begin('~/.vim/bundle')
  " misc
  Plug 'scrooloose/nerdtree'
  Plug 'dense-analysis/ale'

  " markdown
  Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

  " appearance
  Plug 'fatih/molokai'

  " git
  Plug 'airblade/vim-gitgutter'

  " go
  Plug 'fatih/vim-go', { 'commit': 'feef9b31507f8e942bcd21f9e1f22d587c83c72d', 'do': ':GoUpdateBinaries' }

  " cpp
  Plug 'rip-rip/clang_complete'

  " lldb
  " Plug 'lldb-tools/vim-lldb' # TODO: compile vim with python3 support for this plugin to work
call plug#end()
