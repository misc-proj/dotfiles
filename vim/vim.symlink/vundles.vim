" Filetype off is required by vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle required!
Bundle "gmarik/vundle"

Bundle "editorconfig/editorconfig-vim"
Bundle "fholgado/minibufexpl.vim"
Bundle "ervandew/supertab"
Bundle "scrooloose/nerdcommenter"
Bundle "Rip-Rip/clang_complete"

Bundle "tpope/vim-markdown"
Bundle "vim-scripts/tlib"

" Other languages
Bundle "pangloss/vim-javascript"
Bundle "jnwhiteh/vim-golang"
Bundle "dart-lang/dart-vim-plugin"
Bundle "spf13/PIV"

" Html, Xml, Css, Markdown...
"Bundle "aaronjensen/vim-sass-status"
"Bundle "claco/jasmine.vim"
Bundle "digitaltoad/vim-jade"
"Bundle "groenewege/vim-less"
"Bundle "itspriddle/vim-jquery"
"Bundle "jtratner/vim-flavored-markdown"
Bundle "kchmck/vim-coffee-script"
"Bundle "kogakure/vim-sparkup"
"Bundle "nelstrom/vim-markdown-preview"
"Bundle "skwp/vim-html-escape"
"Bundle "slim-template/vim-slim"
"Bundle "timcharper/textile.vim"
"Bundle "tpope/vim-haml"
Bundle "wavded/vim-stylus"

" Git related...
Bundle "gregsexton/gitv"
Bundle "tjennings/git-grep-vim"
Bundle "tpope/vim-fugitive"
Bundle "tpope/vim-git"

" General text editing improvements...
Bundle "AndrewRadev/splitjoin.vim"
"Bundle "Raimondi/delimitMate"
"Bundle "Shougo/neocomplcache"
"Bundle "briandoll/change-inside-surroundings.vim"
Bundle "garbas/vim-snipmate"
"Bundle "godlygeek/tabular"
"Bundle "honza/vim-snippets"
"Bundle "nelstrom/vim-visual-star-search"
Bundle "Lokaltog/vim-easymotion"
"Bundle "tomtom/tcomment_vim"
"Bundle "tpope/vim-bundler"
"Bundle "vim-scripts/IndexedSearch"
"Bundle "vim-scripts/camelcasemotion"
"Bundle "vim-scripts/matchit.zip"
"Bundle "terryma/vim-multiple-cursors"

" General vim improvements
Bundle "MarcWeber/vim-addon-mw-utils"
"Bundle "bogado/file-line"
"Bundle "jistr/vim-nerdtree-tabs"
Bundle "kien/ctrlp.vim"
Bundle "majutsushi/tagbar"
"Bundle "mattn/webapi-vim"
"Bundle "rking/ag.vim"
"Bundle "scrooloose/nerdtree"
Bundle "scrooloose/syntastic"
"Bundle "sjl/gundo.vim"
"Bundle "skwp/YankRing.vim"
"Bundle "skwp/greplace.vim"
"Bundle "skwp/vim-conque"
"Bundle "tomtom/tlib_vim"
"Bundle "tpope/vim-abolish"
"Bundle "tpope/vim-endwise"
"Bundle "tpope/vim-ragtag"
"Bundle "tpope/vim-repeat"
Bundle "tpope/vim-surround"
"Bundle "tpope/vim-unimpaired"
"Bundle "vim-scripts/AnsiEsc.vim"
"Bundle "vim-scripts/AutoTag"
"Bundle "vim-scripts/lastpos.vim"
"Bundle "vim-scripts/sudo.vim"
"Bundle "xsunsmile/showmarks"

" Text objects
"Bundle "austintaylor/vim-indentobject"
"Bundle "bootleq/vim-textobj-rubysymbol"
"Bundle "coderifous/textobj-word-column.vim"
"Bundle "kana/vim-textobj-datetime"
"Bundle "kana/vim-textobj-entire"
"Bundle "kana/vim-textobj-function"
"Bundle "kana/vim-textobj-user"
"Bundle "lucapette/vim-textobj-underscore"
"Bundle "nathanaelkane/vim-indent-guides"
"Bundle "nelstrom/vim-textobj-rubyblock"
"Bundle "thinca/vim-textobj-function-javascript"
"Bundle "vim-scripts/argtextobj.vim"

" Cosmetics, color scheme, Powerline...
Bundle "chrisbra/color_highlight"
Bundle "altercation/vim-colors-solarized"
Bundle "Lokaltog/powerline"
"Bundle "vim-scripts/TagHighlight"
"Bundle "itspriddle/vim-jquery"
"Bundle "slim-template/vim-slim"
"Bundle "bogado/file-line"
"Bundle "tpope/vim-rvm"
"Bundle "nelstrom/vim-visual-star-search"

Bundle "nono/vim-handlebars"
Bundle 'rizzatti/funcoo.vim'
Bundle 'rizzatti/dash.vim'

"Filetype plugin indent on is required by vundle
filetype plugin indent on
