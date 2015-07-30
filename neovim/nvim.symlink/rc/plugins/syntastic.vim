" syntax checking
NeoBundle "scrooloose/syntastic"

let g:syntastic_javascript_jshint_args = ""
let g:syntastic_typescript_tsc_args = "-t ES5 --module commonjs"
let g:syntastic_typescript_tslint_args = "-c ".g:vim_base."/tslint.config.json"
let g:syntastic_coffee_coffeelint_args = "--csv -f ".g:vim_base."/coffeelint.config.json"
let g:syntastic_error_symbol = '✗'
let g:syntastic_style_error_symbol = '✠'
let g:syntastic_warning_symbol = '∆'
let g:syntastic_style_warning_symbol = '≈'
let g:syntastic_always_populate_loc_list = 1

" highlight link SyntasticError WarningMsg
" highlight link SyntasticWarning Question
highlight link SyntasticErrorSign WarningMsg
highlight link SyntasticWarningSign Question

" show errors from all checkers
autocmd FileType go let g:syntastic_aggregate_errors = 1
autocmd FileType typescript let g:syntastic_aggregate_errors = 1

autocmd FileType go let g:syntastic_go_checkers = ["go", "govet", "golint"]
autocmd FileType typescript let g:syntastic_typescript_checkers = ["tsc", "tslint"]
