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

  " vim-vue
  autocmd BufRead,BufNewFile *.vue setlocal filetype=vue.html.javascript.css

  " vim-latex-live-preview
  autocmd Filetype tex setl updatetime=1

  " OmniCppComplete
  let OmniCpp_NamespaceSearch = 1
  let OmniCpp_GlobalScopeSearch = 1
  let OmniCpp_ShowAccess = 1
  let OmniCpp_ShowPrototypeInAbbr = 1 " show function parameters
  let OmniCpp_MayCompleteDot = 1 " autocomplete after .
  let OmniCpp_MayCompleteArrow = 1 " autocomplete after ->
  let OmniCpp_MayCompleteScope = 1 " autocomplete after ::
  let OmniCpp_DefaultNamespaces = ["std", "_GLIBCXX_STD"]
  au CursorMovedI,InsertLeave * if pumvisible() == 0|silent! pclose|endif " automatically open and close the popup menu / preview window  
  set completeopt=menuone,menu,longest,preview
  au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main 
  au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set tags+=./tags
  au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set tags+=~/.vim/tags/cpp 
  au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set tags+=~/.vim/tags/sdl
  au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set tags+=~/.vim/tags/sfml
  au BufWritePost *cpp,*hpp silent! execute "!ctags -R --c++-kinds=+pl --fields=+iaS --extra=+q ." | redraw! 
