function! StripTrailingWhitespace()
  if exists('b:stripWhitespace')
    call Preserve("%s/\\s\\+$//e")
  endif
endfunction

" automatically strip whitespace trailing on save for these files (add "let
" b:stripWhitespace = 1" in ftplugin files to enable)
autocmd BufWritePre * call StripTrailingWhitespace()
