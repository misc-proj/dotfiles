" Format the contents of the buffer using the associated formatter.
" nnoremap <silent> <leader>hb :FormatCode<cr>

" Format over the motion that follows. This is a custom operator.
" For instance, <PREFIX>i  will format all lines inside the enclosing curly
" braces.
" nnoremap <silent> <leader>h :set opfunc=codefmt#FormatMap<cr>g@

" Format the current line or range using the formatter associated with the
" current buffer.
" nnoremap <silent> <leader>h= :FormatLines<cr>

" Format the visually selected region using the formatter associated with the
" current buffer.
" vnoremap <silent> <leader>h :FormatLines<cr>
