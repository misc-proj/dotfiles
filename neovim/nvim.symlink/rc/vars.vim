let g:editor_command = "nvim"
let g:cache_dir = g:vim_base . "/.cache/"

" prefer locally installed python
if executable("/usr/local/bin/python")
  let g:python_host_prog = "/usr/local/bin/python"
endif

if executable("/usr/local/bin/python3")
  let g:python3_host_prog = "/usr/local/bin/python3"
endif
