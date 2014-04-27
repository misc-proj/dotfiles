setlocal tabstop=4
setlocal shiftwidth=4
setlocal noexpandtab
setlocal listchars=tab:\ \ ,trail:-

let g:syntastic_go_checkers = ['go', 'gotype', 'govet', 'golint']
let g:syntastic_aggregate_errors = 1
