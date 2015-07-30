let g:startify_session_dir = GetCacheDir("sessions")
let g:startify_change_to_vcs_root = 1
let g:startify_show_sessions = 1

autocmd FileType startify setlocal nospell
nnoremap <f3> :Startify<cr>
