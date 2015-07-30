" seamless navigation between tmux panes and vim splits
if exists("$TMUX")
  NeoBundle "christoomey/vim-tmux-navigator"

  autocmd FileType vimfiler nmap <buffer> <c-l> :TmuxNavigateRight<cr>
  autocmd FileType vimfiler nmap <buffer> <c-j> :TmuxNavigateDown<cr>
endif
