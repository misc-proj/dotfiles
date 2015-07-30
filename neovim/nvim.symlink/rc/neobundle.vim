if filereadable(expand(g:vim_base . "/neobundles.vim"))
  execute "source" fnameescape(expand(g:vim_base . "/neobundles.vim"))
endif
