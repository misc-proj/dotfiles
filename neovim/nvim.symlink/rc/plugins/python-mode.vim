let g:pymode_lint_checker = "pyflakes"
let g:pymode_utils_whitespaces = 0
let g:pymode_options = 0
let g:pymode_rope=0

" disable if python support not present
if !has("python")
  let g:pymode = 0
endif
