" neobundle setup {
  if has("vim_starting")
    set nocompatible               " Be iMproved

    " Required:
    set runtimepath+=~/.vim/bundle/neobundle.vim/
  endif

  " required
  call neobundle#begin(expand("~/.vim/bundle/"))

  NeoBundleFetch "Shougo/neobundle.vim"
" }

" vimproc {
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
    NeoBundle "MarcWeber/vim-addon-mw-utils"
    NeoBundle "tomtom/tlib_vim"
  " }

  " general {
    NeoBundle "scrooloose/nerdtree"
    NeoBundle "altercation/vim-colors-solarized"
    NeoBundle "tpope/vim-surround"
    NeoBundle "kien/ctrlp.vim"
    NeoBundle "terryma/vim-multiple-cursors"
    NeoBundle "vim-scripts/sessionman.vim"
    NeoBundle "matchit.zip"
    NeoBundle "bling/vim-airline"
    NeoBundle "Lokaltog/vim-easymotion"
    NeoBundle "godlygeek/csapprox"
    NeoBundle "jistr/vim-nerdtree-tabs"
    NeoBundle "mbbill/undotree"
    NeoBundle "nathanaelkane/vim-indent-guides"
    NeoBundle "mhinz/vim-signify"
    NeoBundle "tpope/vim-abolish"
    NeoBundle "osyo-manga/vim-over"
    NeoBundle "justinmk/vim-sneak"
    NeoBundle "kana/vim-textobj-user"
    NeoBundle "kana/vim-textobj-indent"
    NeoBundle "fholgado/minibufexpl.vim"
  " }

  " writing {
    NeoBundle "reedes/vim-litecorrect"
    NeoBundle "reedes/vim-textobj-sentence"
    NeoBundle "reedes/vim-textobj-quote"
    NeoBundle "reedes/vim-wordy"
  " }

  " general programming {
    NeoBundle "scrooloose/syntastic"
    NeoBundle "tpope/vim-fugitive"
    NeoBundle "mattn/webapi-vim"
    NeoBundle "mattn/gist-vim"
    NeoBundle "scrooloose/nerdcommenter"
    NeoBundle "godlygeek/tabular"
    NeoBundle "majutsushi/tagbar"
    NeoBundle "AndrewRadev/splitjoin.vim"
  " }

  " snippets & autocomplete {
    if v:version > 703 || (v:version == 703 && has("patch584"))
      NeoBundle "Valloric/YouCompleteMe"
    endif
    NeoBundle "SirVer/ultisnips"
    NeoBundle "honza/vim-snippets"
  " }

  " language polyglot - collection of language packs {
    NeoBundle "joshuarubin/vim-polyglot"
  " }

  " php {
    NeoBundle "arnaud-lb/vim-php-namespace"
  " }

  " python {
    NeoBundle "klen/python-mode"
    NeoBundle "python.vim"
    NeoBundle "python_match.vim"
    NeoBundle "pythoncomplete"
  " }

  " html {
    NeoBundle "amirh/HTML-AutoCloseTag"
  " }

  " ruby {
    NeoBundle "tpope/vim-rails"
    let g:rubycomplete_buffer_loading = 1
  " }

  " golang {
    NeoBundle "fatih/vim-go"
    NeoBundle "roktas/syntastic-more"
  " }

  " misc {
    NeoBundle "spf13/vim-preview"
    NeoBundle "rizzatti/funcoo.vim"
    NeoBundle "rizzatti/dash.vim"
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
