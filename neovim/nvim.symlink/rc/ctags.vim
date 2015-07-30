let &tags="./tags;/,".g:vim_base."tags"

" make tags placed in .git/tags file available in all levels of a repository
let gitroot = substitute(system("git rev-parse --show-toplevel"), '[\n\r]', "", "g")
if gitroot != ""
  let &tags = &tags . "," . gitroot . "/.git/tags"
endif
