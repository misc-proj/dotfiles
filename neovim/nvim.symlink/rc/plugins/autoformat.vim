function! RunAutoFormat() "{{{
  if exists('b:runAutoFormat')
    :Autoformat
  endif
endfunction "}}}

autocmd BufWritePre * call RunAutoFormat()
autocmd FileType javascript,typescript,python,json,ruby,css,scss,cs,cpp,c,objc,java let b:runAutoFormat = 1
