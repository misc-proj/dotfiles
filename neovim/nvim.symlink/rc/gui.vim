if has("gui_running")
  if has("gui_macvim")
    set transparency=1
    set guifont=Inconsolata\ for\ Powerline:h12
  elseif has("gui_gtk")
    set guifont=Inconsolata\ for\ Powerline\ Medium\ 10
  endif
elseif $TERM_PROGRAM == "iTerm.app"
  " different cursors for insert vs normal mode
  if exists("$TMUX")
    let &t_SI = "\<Esc>[3 q"
    let &t_EI = "\<Esc>[0 q"
  else
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif
endif
