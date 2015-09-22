NeoBundle "Valloric/YouCompleteMe", {
  \ 'vim_version': '7.3.598',
  \ 'build' : {
  \     'others': './install.py --gocode-completer --clang-completer',
  \    }
  \ }

if v:version < 703 || v:version == 703 && !has("patch598")
  finish
endif

let g:acp_enableAtStartup = 0
let g:ycm_collect_identifiers_from_tags_files = 1

" enable omni completion
autocmd MyAutoCmd FileType css           setlocal omnifunc=csscomplete#CompleteCSS
autocmd MyAutoCmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd MyAutoCmd FileType javascript    setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd MyAutoCmd FileType python        setlocal omnifunc=pythoncomplete#Complete
autocmd MyAutoCmd FileType xml           setlocal omnifunc=xmlcomplete#CompleteTags
autocmd MyAutoCmd FileType ruby          setlocal omnifunc=rubycomplete#Complete
autocmd MyAutoCmd FileType haskell       setlocal omnifunc=necoghc#omnifunc
