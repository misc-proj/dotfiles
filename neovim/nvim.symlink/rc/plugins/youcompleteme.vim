let g:acp_enableAtStartup = 0
let g:ycm_collect_identifiers_from_tags_files = 1

" enable omni completion
autocmd FileType css           setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript    setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python        setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby          setlocal omnifunc=rubycomplete#Complete
autocmd FileType haskell       setlocal omnifunc=necoghc#omnifunc
