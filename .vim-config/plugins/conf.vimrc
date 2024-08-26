" plugin config

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

  " vim-go
  let g:go_fmt_command = "goimports"
  let g:go_auto_type_info = 1
  let g:go_fmt_autosave = 1
  let g:go_info_mode = 'gopls'
  let g:go_gopls_enabled = 1
  let g:go_fmt_experimental = 1
  "  let g:go_debug=['lsp'] " vim-go debug mode
  let g:go_echo_command_info=1
  let g:go_debug_address="127.0.0.1:1905"
  let g:go_def_mapping_enabled=0

  command! GoRestartGopls call go#lsp#Restart() " restart gopls language server

  " ale
  let g:ale_linters = {
  \   'markdown': ['mdl'],
  \   'go': ['gofmt', 'golint', 'go vet', 'golangserver'],
  \   'latex': ['proselint', 'chktex', 'lacheck'],
  \   'tex': ['proselint', 'chktex', 'lacheck'],
  \   'cpp': ['g++']
  \}

  " clang-complete
  let g:clang_library_path='/Library/Developer/CommandLineTools/usr/lib/libclang.dylib'
