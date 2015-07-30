" use ‘curly’ quote characters, depends on kana/vim-textobject-user
NeoBundle "reedes/vim-textobj-quote"

augroup textobj_quote
  autocmd!
  autocmd FileType markdown call textobj#quote#init()
  autocmd FileType textile  call textobj#quote#init()
  autocmd FileType text     call textobj#quote#init({"educate": 0})
augroup end
