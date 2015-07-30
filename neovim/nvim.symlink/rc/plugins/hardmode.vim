"autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()
nnoremap <leader>o <Esc>:call ToggleHardMode()<CR>
