syntax on
set mouse=a              " enable mouse usage (all modes)
set mousehide

if has("macunix")
  set clipboard=unnamed  " sync with OS clipboard
endif

set history=1000         " store lots of :cmdline history
set nospell
set hidden               " hide buffers when they are abandoned
set exrc                 " enable per-directory .vimrc files
set secure               " disable unsafe commands in local .vimrc files
set autoread             " reload files changed outside vim
set nrformats-=octal     " always assume decimal numbers
set ttyfast              " assume fast terminal connection
set encoding=utf-8       " set encoding for text

let g:mapleader = ","

if executable("ag")
  set grepprg=ag\ --nogroup\ --column\ --smart-case\ --nocolor\ --follow
  set grepformat=%f:%l:%c:%m
endif
