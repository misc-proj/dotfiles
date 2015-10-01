" seamless navigation between tmux panes and vim splits
if exists("$TMUX")
  NeoBundle "christoomey/vim-tmux-navigator"

  autocmd MyAutoCmd FileType vimfiler nmap <buffer> <c-l> :TmuxNavigateRight<cr>
  autocmd MyAutoCmd FileType vimfiler nmap <buffer> <c-j> :TmuxNavigateDown<cr>
else
  nmap <c-h> :wincmd h<cr>
  nmap <c-j> :wincmd j<cr>
  nmap <c-k> :wincmd k<cr>
  nmap <c-l> :wincmd l<cr>
endif
