" seamless navigation between tmux panes and vim splits
if exists("$TMUX")
  NeoBundle "christoomey/vim-tmux-navigator"

  autocmd MyAutoCmd FileType vimfiler nmap <buffer> <c-l> :TmuxNavigateRight<cr>
  autocmd MyAutoCmd FileType vimfiler nmap <buffer> <c-j> :TmuxNavigateDown<cr>
endif
