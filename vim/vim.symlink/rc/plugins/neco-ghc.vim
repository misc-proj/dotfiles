NeoBundleLazy "eagletmt/neco-ghc", {"autoload": {"filetypes": ["haskell"]}}

let g:haskellmode_completion_ghc = 0
autocmd MyAutoCmd FileType haskell setlocal omnifunc=necoghc#omnifunc
