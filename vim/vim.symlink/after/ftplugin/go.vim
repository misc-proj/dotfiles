setlocal tabstop=4
setlocal shiftwidth=4
setlocal noexpandtab
setlocal listchars=tab:\ \ ,trail:-
autocmd BufWritePre <buffer> :GoLint
