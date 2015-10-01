" seamless navigation between tmux panes and vim splits
if exists("$TMUX")
  NeoBundle "christoomey/vim-tmux-navigator"

  autocmd MyAutoCmd FileType vimfiler nmap <buffer> <c-l> :TmuxNavigateRight<cr>
  autocmd MyAutoCmd FileType vimfiler nmap <buffer> <c-j> :TmuxNavigateDown<cr>
else
  nmap <silent> <c-h> :wincmd h<cr>
  nmap <silent> <c-j> :wincmd j<cr>
  nmap <silent> <c-k> :wincmd k<cr>
  nmap <silent> <c-l> :wincmd l<cr>
endif
