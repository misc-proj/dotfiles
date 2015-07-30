"  autocmd! BufWritePost * Neomake
"
"  let g:neomake_error_sign = {
"      \ 'text': '✗',
"      \ 'texthl': 'ErrorMsg',
"      \ }
"  let g:neomake_warning_sign = {
"      \ 'text': '∆',
"      \ 'texthl': 'Question',
"      \ }
"
"  let g:neomake_go_govet_maker = {
"      \ 'exe': 'go',
"      \ 'args': ['vet'],
"      \ 'errorformat':
"          \ '%Evet: %.%\+: %f:%l:%c: %m,' .
"          \ '%W%f:%l: %m,' .
"          \ '%-G%.%#'
"      \ }
"  let g:neomake_go_enabled_makers = ['go', 'golint', 'govet']
