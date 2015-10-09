function! Preserve(command)
  " preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  execute a:command
  " clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction

" make directory automatically
autocmd MyAutoCmd BufWritePre *
      \ call s:mkdir_as_necessary(expand('<afile>:p:h'), v:cmdbang)

function! s:mkdir_as_necessary(dir, force)
  if !isdirectory(a:dir) && &l:buftype == '' &&
        \ (a:force || input(printf('"%s" does not exist. Create? [y/N]',
        \              a:dir)) =~? '^y\%[es]$')
    call mkdir(iconv(a:dir, &encoding, &termencoding), 'p')
  endif
endfunction

function! CursorPing()
  set cursorcolumn
  set cursorline
  redraw
  sleep 200m
  set nocursorcolumn
  set nocursorline
endfunction

" enter: Highlight cursor location
nnoremap <silent> <cr> :call CursorPing()<cr>

" go back to previous position of cursor if any
autocmd MyAutoCmd BufReadPost *
  \ if line("'\"") > 0 && line("'\"") <= line("$") |
  \  execute 'normal! g`"zvzz' |
  \ endif

set tags=./tags;/,~/.vimtags

" make tags placed in .git/tags file available in all levels of a repository
let gitroot = substitute(system("git rev-parse --show-toplevel"), '[\n\r]', "", "g")
if gitroot != ""
  let &tags = &tags . "," . gitroot . "/.git/tags"
endif

if !has("gui_running")
  " for tmux to automatically set paste and nopaste mode at the time pasting (as
  " happens in VIM UI)
  function! s:wrap_for_tmux(s)
    if !exists('$TMUX')
      return a:s
    endif

    let tmux_start = "\<Esc>Ptmux;"
    let tmux_end = "\<Esc>\\"

    return tmux_start . substitute(a:s, "\<Esc>", "\<Esc>\<Esc>", 'g') . tmux_end
  endfunction

  let &t_SI .= s:wrap_for_tmux("\<Esc>[?2004h")
  let &t_EI .= s:wrap_for_tmux("\<Esc>[?2004l")

  function! s:xterm_paste_begin()
    set pastetoggle=<Esc>[201~
    set paste
    return ""
  endfunction

  inoremap <special> <expr> <Esc>[200~ <sid>xterm_paste_begin()
endif

function! AutoStripTrailingWhitespace()
  if exists('b:auto_strip_trailing_whitespace')
    call Preserve("%s/\\s\\+$//e")
  endif
endfunction

function! StripTrailingWhitespace()
  call Preserve("%s/\\s\\+$//e")
endfunction

" automatically strip whitespace trailing on save for these files (add "let
" b:auto_strip_trailing_whitespace = 1" in ftplugin files to enable)
autocmd MyAutoCmd BufWritePre * call AutoStripTrailingWhitespace()
