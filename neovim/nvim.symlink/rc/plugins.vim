for f in split(glob(g:vim_base . "/rc/plugins/*.vim"), "\n")
  execute "source" fnameescape(f)
endfor

