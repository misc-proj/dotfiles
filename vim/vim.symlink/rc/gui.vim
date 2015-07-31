set background=dark
colorscheme hybrid         " load a colorscheme
highlight clear SignColumn " signcolumn should match background
" highlight clear LineNr     " current line number row will have same background color in relative mode

set mouse=a " enable mouse usage (all modes)
set mousehide

augroup HiglightTODO
  " ensure any instance TODO or FIXME is highlighted as an Error in any filetype
  autocmd!
  autocmd WinEnter,VimEnter * :silent! call matchadd('Error', 'TODO', -1)
  autocmd WinEnter,VimEnter * :silent! call matchadd('Error', 'FIXME', -1)
augroup END

" gnome-terminal colors
if &term =~ '^\(xterm\|screen\)$' && $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

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