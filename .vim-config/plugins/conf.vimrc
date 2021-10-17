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
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd '.argv()[0] | wincmd q |endif

  " markdown-preview
  nmap <C-s> <Plug>MarkdownPreview
  nmap <M-s> <Plug>MarkdownPreviewStop
  nmap <C-p> <Plug>MarkdownPreviewToggle
  let g:mkdp_page_title = '${name}'
  let g:mkdp_auto_start = 0
  let g:mkdp_auto_close = 0
  let g:mkdp_preview_options = {
      \ 'sync_scroll_type': 'relative'
      \ }

  "  md-img-paste
  autocmd FileType markdown nmap <buffer><silent> <leader>p :call mdip#MarkdownClipboardImage()<CR>

  " ultisnips
  let g:UltiSnipsExpandTrigger="<tab>"
  let g:UltiSnipsJumpForwardTrigger="<c-j>"
  let g:UltiSnipsJumpBackwardTrigger="<c-k>"
  let g:UltiSnipsListSnippets="<c-tab>"

  " vim-go
  let g:go_fmt_command = "goimports"
  let g:go_auto_type_info = 1
  let g:go_fmt_autosave = 1
  let g:go_info_mode = 'gopls'
  let g:go_gopls_enabled = 1
  let g:go_fmt_experimental = 1
  "  let g:go_debug=['lsp'] " vim-go debug mode
  let g:go_echo_command_info=1

  command! GoRestartGopls call go#lsp#Restart() " restart gopls language server

  " lervag/latex
  let g:tex_flavor='latex'
  let g:vimtex_view_method='skim'
  let g:vimtex_quickfix_mode=0

  " KeitaNakamura/tex-conceal
  set conceallevel=1
  let g:tex_conceal='abdmg'
  hi Conceal ctermbg=none

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

  " latex
  let g:tex_flavor='latex'

  " ale
  let g:ale_linters = {
  \   'markdown': ['mdl'],
  \   'go': ['gofmt', 'golint', 'go vet', 'golangserver'],
  \   'latex': ['proselint', 'chktex', 'lacheck'],
  \   'tex': ['proselint', 'chktex', 'lacheck']
  \}
