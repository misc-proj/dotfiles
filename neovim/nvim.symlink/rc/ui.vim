set ruler
set title
set novisualbell                " no sounds
set t_vb=
set showcmd                     " show incomplete cmds down the bottom
set completeopt=longest,menuone " auto complete setting
set number                      " line numbers are good
set winminheight=0

set wildmenu                    " show list for autocomplete
set wildmode=list:longest,full
set wildignorecase

" stuff to ignore when tab completing
set wildignore+=
      \*.o,
      \*.obj,
      \*~,
      \log/**,
      \tmp/**,
      \*.png,
      \*.jpg,
      \*.gif,
      \*.so,
      \*.swp,
      \*.zip,
      \*.pdf,
      \*/.Trash/**,
      \*/.git/**,
      \*/.hg/**,
      \*/.svn/**,
      \*/.idea/**,
      \*/.DS_Store

set winheight=50                " sensible heights for splits
set scrolloff=8                 " start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set scrolljump=3
set numberwidth=1
set list
"set listchars=eol:$,tab:>-,trail:-

if has("gui_running")
  set listchars=tab:›\ ,trail:•,extends:❯,precedes:❮,nbsp:.
else
  set listchars=tab:\ \ ,trail:•,extends:❯,precedes:❮,nbsp:.
endif

let &showbreak="↪ "
