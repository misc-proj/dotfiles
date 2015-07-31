if $GOPATH != ""
  NeoBundle "fatih/vim-go" " full featured go development environment support for vim

  let g:go_def_mapping_enabled = 0
  let g:go_fmt_command = "goimports"
  let g:go_fmt_fail_silently = 0
  " let g:go_auto_type_info = 1
  " let g:go_dispatch_enabled = 1

  autocmd MyAutoCmd FileType go nmap <leader>d <plug>(go-doc)
  autocmd MyAutoCmd FileType go nmap <leader>r <plug>(go-run)
  autocmd MyAutoCmd FileType go nmap <leader>b <plug>(go-build)
  autocmd MyAutoCmd FileType go nmap <leader>t <plug>(go-test)
  " autocmd MyAutoCmd FileType go nmap <leader>ds <plug>(go-def-split)
  " autocmd MyAutoCmd FileType go nmap <leader>dv <plug>(go-def-vertical)
  " autocmd MyAutoCmd FileType go nmap <leader>dt <plug>(go-def-tab)
  autocmd MyAutoCmd FileType go nmap gd <plug>(go-def-split)
endif
