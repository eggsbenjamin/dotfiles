call plug#begin('~/.vim/bundle')
  " misc
  Plug 'scrooloose/nerdtree'
  Plug 'Shougo/neocomplete', { 'tag' : 'ver.2.1' }

  " appearance
  Plug 'fatih/molokai'

  " git
  Plug 'airblade/vim-gitgutter'

  " go
  Plug 'fatih/vim-go', { 'tag':'v1.18', 'do': ':GoUpdateBinaries' }

  " C/C++
  Plug 'WolfgangMehner/c-support'
  Plug 'vim-scripts/OmniCppComplete'
  Plug 'vim-scripts/cimpl'

  " rust
  Plug 'racer-rust/vim-racer'

  " java
  Plug 'starcraftman/vim-eclim'

  " terraform
  Plug 'hashivim/vim-terraform'
call plug#end()
