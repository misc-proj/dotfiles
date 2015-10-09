if has("vim_starting")
  let &runtimepath .= ",~/.vim/bundle/neobundle.vim/"
endif

call neobundle#begin(expand("~/.vim/bundle/"))

" Let NeoBundle manage NeoBundle, required
NeoBundleFetch "Shougo/neobundle.vim"

" interactive command execution, makes NeoBundle use asynchronous update/install, e.g. FAST!
NeoBundle 'Shougo/vimproc.vim', {
  \ 'build' : {
  \     'windows': 'tools\\update-dll-mingw',
  \     'cygwin':  'make -f make_cygwin.mak',
  \     'mac':     'make -f make_mac.mak',
  \     'unix':    'make -f make_unix.mak',
  \    }
  \ }

" load plugins with extra configuration
for f in split(glob("~/.vim/rc/plugins/*.vim"), "\n")
  execute "source" fnameescape(f)
endfor

" core
NeoBundle "tpope/vim-repeat"    " enable repeating supported plugin maps with '.'
NeoBundle "tpope/vim-eunuch"    " sugar for the unix shell commands
NeoBundle "tpope/vim-obsession" " continuously updated session files

" general programming
NeoBundle "joshuarubin/vim-polyglot"    " a collection of language packs for vim, forked from sheerun/vim-polyglot
NeoBundle "AndrewRadev/splitjoin.vim"   " simplifies the transition between multi-line and single-line code
NeoBundle "arnaud-lb/vim-php-namespace" " types 'use' statements for you

" web
NeoBundleLazy "amirh/HTML-AutoCloseTag", {"autoload":{"filetypes":["html","xml"]}} " automatically closes html tags once you finish typing them
NeoBundleLazy "gregsexton/MatchTag",     {"autoload":{"filetypes":["html","xml"]}} " matchparen for html tags

" javascript
NeoBundleLazy "mmalecki/vim-node.js", {"autoload":{"filetypes":["javascript"]}} " file type detect which detects node.js shebang

" ruby
NeoBundle "tpope/vim-rails"   " ruby on rails power tools
NeoBundle "tpope/vim-bundler" " lightweight support for ruby's bundler

" haskell
NeoBundleLazy "eagletmt/ghcmod-vim", {"autoload": {"filetypes": ["haskell"]}}
NeoBundleLazy "bitc/vim-hdevtools", {"autoload": {"filetypes": ["haskell"]}}

" snippets & autocomplete
NeoBundle "honza/vim-snippets" " contains snippets files for various programming languages

" editing
NeoBundle     "tpope/vim-endwise"                                        " wisely add 'end' in ruby, endfunction/endif/more in vim script, etc
NeoBundle     "tpope/vim-speeddating"                                    " use ctrl-a/ctrl-x to increment dates, times, and more
NeoBundle     "thinca/vim-visualstar"                                    " search for selection with '*' in visual mode
NeoBundle     "tomtom/tcomment_vim"                                      " easy to use, file-type sensible comments
NeoBundleLazy "editorconfig/editorconfig-vim", {"autoload":{"insert":1}} " editorconfig

" collaborative editing
NeoBundle "floobits/floobits-neovim"

if has("nvim")
  NeoBundle "FredKSchott/CoVim"
endif

NeoBundle "thinca/vim-qfreplace" " perform replacements in quickfix

" textobj
NeoBundle "kana/vim-textobj-user"            " painlessly create your own text objects
NeoBundle "kana/vim-textobj-indent"          " text objects for indented blocks of lines, depends on kana/vim-textobj-user
NeoBundle "kana/vim-textobj-entire"          " text objects for entire buffer
NeoBundle "lucapette/vim-textobj-underscore" " underscore text-object

" writing
NeoBundle "reedes/vim-litecorrect" " lightweight auto-correction
NeoBundle "reedes/vim-wordy"       " uncover usage problems in your writing

" misc
if exists("$TMUX")
  NeoBundle "tmux-plugins/vim-tmux-focus-events" " fix FocusGained and FocusLost autocommand events
endif

NeoBundle     "vimwiki"                                                                                               " personal wiki
NeoBundle     "bufkill.vim"                                                                                           " unload/delete/wipe a buffer, keep its window(s), display last accessed buffer(s)
NeoBundle     "chrisbra/vim_faq"                                                                                      " the vim faq from http://vimdoc.sourceforge.net/
NeoBundle     "tpope/vim-abolish"                                                                                     " easily search for, substitute, and abbreviate multiple variants of a word
NeoBundle     "osyo-manga/vim-over"                                                                                   " :substitute preview
NeoBundleLazy "guns/xterm-color-table.vim", {"autoload":{"commands":"XtermColorTable"}}                               " all 256 xterm colors with their rgb equivalents

" color schemes
" if has("gui") || v:version >= 703
"   NeoBundle "godlygeek/csapprox" " make gvim-only colorschemes work transparently in terminal vim
" endif

NeoBundle "nanotech/jellybeans.vim"          " colorful, dark color scheme
NeoBundle "tomasr/molokai"                   " port of the monokai theme for textmate
NeoBundle "chriskempson/vim-tomorrow-theme"  " a bright theme with pastel colours and sensible syntax highlighting
NeoBundle "sjl/badwolf"                      " colorscheme pieced together from various colors
NeoBundle "ajh17/Spacegray.vim"              " loosely based on the spacegray xcode theme
NeoBundle "romainl/Apprentice"               " a dark, low-contrast, colorscheme
NeoBundle "jnurmine/Zenburn"                 " a low-contrast colorscheme
NeoBundle "morhetz/gruvbox"                  " a bright theme with pastel 'retro groove' colors

" neobundle tear down
call neobundle#end()

" required
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
