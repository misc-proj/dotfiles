function! CursorPing()
  set cursorcolumn
  set cursorline
  redraw
  sleep 200m
  set nocursorcolumn
  set nocursorline
endfunction

" enter: Highlight cursor location
nnoremap <silent> <cr> :call CursorPing()<cr>
