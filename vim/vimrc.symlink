if has("syntax")
  syntax on
endif

set background=dark
"set background=light

if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
  filetype plugin indent on
endif

set showmatch  " Show matching brackets.
set ignorecase " Do case insensitive matching
set smartcase  " Do smart case matching
set incsearch  " Incremental search
set autowrite  " Automatically save before commands like :next and :make
set hidden     " Hide buffers when they are abandoned
"set mouse=a    " Enable mouse usage (all modes)

set list
"set listchars=eol:$,tab:>-,trail:-
set listchars=tab:>-,trail:-
"set spell

"set textwidth=80
set formatoptions=croqlt

set exrc   " enable per-directory .vimrc files
set secure " disable unsafe commands in local .vimrc files
set ofu=syntaxcomplete#Complete

let mapleader = ","
let php_asp_tags = 1

if filereadable(expand("~/.vim/vundles.vim"))
  source ~/.vim/vundles.vim
endif

let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabClosePreviewOnPopupClose = 1
let g:DisableAutoPHPFolding = 1
let g:ctrlp_root_markers = ['.root']
let g:syntastic_coffee_coffeelint_args = "--csv -f ~/.vim/coffeelint.config.json"

set nocompatible
set title
set hlsearch

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=1000                "Store lots of :cmdline history
set visualbell                  "No sounds
set showcmd                     "Show incomplete cmds down the bottom
set autoread                    "Reload files changed outside vim

" ================ Persistent Undo ==================
" Keep undo history across sessions, by storing in file.
" Only works all the time.

silent !mkdir ~/.vim/backups > /dev/null 2>&1
set undodir=~/.vim/backups
set undofile

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points

" ================ Indentation ======================
set autoindent
set smartindent
set smarttab
set nocopyindent
set shiftwidth=2
set tabstop=2
set expandtab

" ================ Completion =======================

set wildmode=longest,list:longest,list:full
set wildmenu
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing
set wildignore+=*vim/backups*
set wildignore+=*sass-cache*
set wildignore+=*DS_Store*
set wildignore+=vendor/rails/**
set wildignore+=vendor/cache/**
set wildignore+=*.gem
set wildignore+=log/**
set wildignore+=tmp/**
set wildignore+=*.png,*.jpg,*.gif

" ================ Scrolling ========================

set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

nmap <silent> <leader>n :silent :nohlsearch<CR>

runtime macros/matchit.vim

set guifont=Inconsolata\ for\ Powerline:h12

au BufNewFile,BufRead,BufEnter *.cpp,*.hpp set omnifunc=omni#cpp#complete#Main

colorscheme solarized

set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim

if has('gui_running')
  set transparency=1
endif
