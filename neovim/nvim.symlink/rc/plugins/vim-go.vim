let g:go_def_mapping_enabled = 0
let g:go_fmt_command = "goimports"
let g:go_fmt_fail_silently = 1
" let g:go_auto_type_info = 1
" let g:go_dispatch_enabled = 1

autocmd FileType go nmap <leader>d <plug>(go-doc)
autocmd FileType go nmap <leader>r <plug>(go-run)
autocmd FileType go nmap <leader>b <plug>(go-build)
autocmd FileType go nmap <leader>t <plug>(go-test)
" autocmd FileType go nmap <leader>ds <plug>(go-def-split)
" autocmd FileType go nmap <leader>dv <plug>(go-def-vertical)
" autocmd FileType go nmap <leader>dt <plug>(go-def-tab)
autocmd FileType go nmap gd <plug>(go-def-split)
