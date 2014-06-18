" neobundle setup {
  if has("vim_starting")
    set nocompatible " Be iMproved

    " required
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  " required
  call neobundle#begin(expand("~/.vim/bundle/"))

  " Let NeoBundle manage NeoBundle, required
  NeoBundleFetch "Shougo/neobundle.vim"
" }

" vimproc {
    " interactive command execution, makes NeoBundle use asynchronous update/install, e.g. FAST!
    let vimproc_updcmd = has("win64") ?
      \ "tools\\update-dll-mingw 64": "tools\\update-dll-mingw 32"

    execute "NeoBundle 'Shougo/vimproc.vim'," . string({
      \   "build": {
      \     "windows": vimproc_updcmd,
      \     "cygwin":  "make -f make_cygwin.mak",
      \     "mac":     "make -f make_mac.mak",
      \     "unix":    "make -f make_unix.mak",
      \   },
      \ })

" }

" neobundles {
  " deps {
    NeoBundle "MarcWeber/vim-addon-mw-utils"  " various utils such as caching interpreted contents of files or advanced glob like things
    NeoBundle "tomtom/tlib_vim"               " some utility functions
  " }

  " general {
    NeoBundle "scrooloose/nerdtree"               " a tree explorer plugin
    NeoBundle "altercation/vim-colors-solarized"  " precision colorscheme (http://ethanschoonover.com/solarized)
    NeoBundle "tpope/vim-surround"                " quoting/parenthesizing made simple
    NeoBundle "kien/ctrlp.vim"                    " full path fuzzy file, buffer, mru, tag, ... finder, TODO(jrubin) considering replacing with Shougo/unite.vim
    NeoBundle "terryma/vim-multiple-cursors"      " true sublime text style multiple selections
    NeoBundle "vim-scripts/sessionman.vim"        " session manager
    NeoBundle "matchit.zip"                       " extended % matching for html, latex, and many other languages
    NeoBundle "bling/vim-airline"                 " lean & mean status/tabline for vim that's light as air, replaced Lokaltog/powerline
    NeoBundle "Lokaltog/vim-easymotion"           " vim motions on speed!
    NeoBundle "godlygeek/csapprox"                " make gvim-only colorschemes work transparently in terminal vim
    NeoBundle "jistr/vim-nerdtree-tabs"           " NERDTree and tabs together, painlessly
    NeoBundle "mbbill/undotree"                   " display your undo history in a graph
    NeoBundle "nathanaelkane/vim-indent-guides"   " visually display indent levels in code
    NeoBundle "mhinz/vim-signify"                 " show a vcs diff using vim's sign column
    NeoBundle "tpope/vim-abolish"                 " easily search for, substitute, and abbreviate multiple variants of a word
    NeoBundle "osyo-manga/vim-over"               " :substitute preview
    NeoBundle "justinmk/vim-sneak"                " motion plugin that jumps to any location specified by two characters
    NeoBundle "kana/vim-textobj-user"             " painlessly create your own text objects
    NeoBundle "kana/vim-textobj-indent"           " text objects for indented blocks of lines, depends on kana/vim-textobj-user
    NeoBundle "fholgado/minibufexpl.vim"          " elegant buffer explorer - takes very little screen space
  " }

  " writing {
    NeoBundle "reedes/vim-litecorrect"       " lightweight auto-correction
    NeoBundle "reedes/vim-textobj-sentence"  " improving on vim's native sentence text object and motion, depends on kana/vim-textobject-user
    NeoBundle "reedes/vim-textobj-quote"     " use ‘curly’ quote characters, depends on kana/vim-textobject-user
    NeoBundle "reedes/vim-wordy"             " uncover usage problems in your writing
  " }

  " general programming {
    NeoBundle "scrooloose/syntastic"       " syntax checking
    NeoBundle "tpope/vim-fugitive"         " a git wrapper so awesome, it should be illegal
    NeoBundle "mattn/webapi-vim"           " an interface to Web APIs
    NeoBundle "mattn/gist-vim"             " vimscript for creating gists (http://gist.github.com)
    NeoBundle "scrooloose/nerdcommenter"   " intensely orgasmic commenting
    NeoBundle "godlygeek/tabular"          " text filtering and alignment
    NeoBundle "majutsushi/tagbar"          " displays tags in a window, ordered by scope http://majutsushi.github.com/tagbar/
    NeoBundle "AndrewRadev/splitjoin.vim"  " simplifies the transition between multi-line and single-line code
  " }

  " snippets & autocomplete {
    if v:version > 703 || (v:version == 703 && has("patch584"))
      NeoBundle "Valloric/YouCompleteMe"  " code-completion engine
    endif
    NeoBundle "SirVer/ultisnips"    " the ultimate snippet solution
    NeoBundle "honza/vim-snippets"  " contains snippets files for various programming languages
  " }

  " language polyglot - collection of language packs {
    NeoBundle "joshuarubin/vim-polyglot"  " a collection of language packs for vim, forked from sheerun/vim-polyglot
  " }

  " php {
    NeoBundle "arnaud-lb/vim-php-namespace"  " types 'use' statements for you
  " }

  " python {
    NeoBundle "klen/python-mode"  " helps you to create python code very quickly
    NeoBundle "python.vim"        " enhanced version of the python syntax highlighting script
    NeoBundle "python_match.vim"  " extend the % motion and define g%, [%, and ]% motions for python files
    NeoBundle "pythoncomplete"    " python omni completion
  " }

  " html {
    NeoBundle "amirh/HTML-AutoCloseTag"  "automatically closes html tags once you finish typing them
  " }

  " ruby {
    NeoBundle "tpope/vim-rails"  " ruby on rails power tools
    let g:rubycomplete_buffer_loading = 1
  " }

  " golang {
    NeoBundle "fatih/vim-go"           " Full featured Go development environment support for Vim
    NeoBundle "roktas/syntastic-more"  " Syntastic checker for Go App Engine
  " }

  " misc {
    NeoBundle "spf13/vim-preview"    " preview markup files such as .markdown, .rdoc, .textile and .html in your browser when you are editing them
    NeoBundle "rizzatti/funcoo.vim"  " functional object oriented viml
    NeoBundle "rizzatti/dash.vim"    " search for terms using [Dash.app](http://kapeli.com/), making API lookups simple, depends on rizzatti/funcoo.vim
  " }
" }

" neobundle tear down {
  call neobundle#end()

  " required
  filetype plugin indent on

  " If there are uninstalled bundles found on startup,
  " this will conveniently prompt you to install them.
  NeoBundleCheck
" }
