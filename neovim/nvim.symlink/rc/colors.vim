set background=dark
colorscheme hybrid         " load a colorscheme
highlight clear SignColumn " signcolumn should match background
" highlight clear LineNr     " current line number row will have same background color in relative mode

augroup HiglightTODO
  " ensure any instance TODO or FIXME is highlighted as an Error in any filetype
  autocmd!
  autocmd WinEnter,VimEnter * :silent! call matchadd('Error', 'TODO', -1)
  autocmd WinEnter,VimEnter * :silent! call matchadd('Error', 'FIXME', -1)
augroup END

" gnome-terminal colors
if &term =~ '^\(xterm\|screen\)$' && $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif
