" vundle setup {
  filetype off

  set rtp+=~/.vim/bundle/vundle/
  call vundle#rc()
" }

" bundles {
  " deps {
    Bundle "gmarik/vundle"
    Bundle "MarcWeber/vim-addon-mw-utils"
    Bundle "tomtom/tlib_vim"
  " }

  " general {
    Bundle "scrooloose/nerdtree"
    Bundle "altercation/vim-colors-solarized"
    Bundle "tpope/vim-surround"
    Bundle "Townk/vim-autoclose"
    Bundle "kien/ctrlp.vim"
    Bundle "terryma/vim-multiple-cursors"
    Bundle "vim-scripts/sessionman.vim"
    Bundle "matchit.zip"
    Bundle "bling/vim-airline"
    Bundle "Lokaltog/vim-easymotion"
    Bundle "godlygeek/csapprox"
    Bundle "jistr/vim-nerdtree-tabs"
    Bundle "mbbill/undotree"
    Bundle "nathanaelkane/vim-indent-guides"
    Bundle "mhinz/vim-signify"
    Bundle "tpope/vim-abolish"
    Bundle "osyo-manga/vim-over"
    Bundle "justinmk/vim-sneak"
    Bundle "kana/vim-textobj-user"
    Bundle "kana/vim-textobj-indent"
    Bundle "fholgado/minibufexpl.vim"
  " }

  " writing {
    Bundle "reedes/vim-litecorrect"
    Bundle "reedes/vim-textobj-sentence"
    Bundle "reedes/vim-textobj-quote"
    Bundle "reedes/vim-wordy"
  " }

  " general programming {
    Bundle "scrooloose/syntastic"
    Bundle "tpope/vim-fugitive"
    Bundle "mattn/webapi-vim"
    Bundle "mattn/gist-vim"
    Bundle "scrooloose/nerdcommenter"
    Bundle "godlygeek/tabular"
    Bundle "majutsushi/tagbar"
    Bundle "AndrewRadev/splitjoin.vim"
  " }

  " snippets & autocomplete {
    if v:version > 703 || (v:version == 703 && has('patch584'))
      Bundle "Valloric/YouCompleteMe"
    endif
    Bundle "SirVer/ultisnips"
    Bundle "honza/vim-snippets"
  " }

  " php {
    Bundle "spf13/PIV"
    Bundle "arnaud-lb/vim-php-namespace"
  " }

  " python {
    Bundle "klen/python-mode"
    Bundle "python.vim"
    Bundle "python_match.vim"
    Bundle "pythoncomplete"
  " }

  " javascript {
    Bundle "elzr/vim-json"
    Bundle "groenewege/vim-less"
    Bundle "pangloss/vim-javascript"
    Bundle "briancollins/vim-jst"
    Bundle "kchmck/vim-coffee-script"
  " }

  " html {
    Bundle "amirh/HTML-AutoCloseTag"
    Bundle "hail2u/vim-css3-syntax"
    Bundle "gorodinskiy/vim-coloresque"
    Bundle "tpope/vim-haml"
    Bundle "wavded/vim-stylus"
    Bundle "digitaltoad/vim-jade"
    Bundle "chrisbra/Colorizer"
  " }

  " ruby {
    Bundle "tpope/vim-rails"
    let g:rubycomplete_buffer_loading = 1
  " }

  " golang {
    Bundle "fatih/vim-go"
    Bundle "roktas/syntastic-more"
  " }

  " misc {
    Bundle "tpope/vim-markdown"
    Bundle "spf13/vim-preview"
    Bundle "mustache/vim-mustache-handlebars"
    Bundle "rizzatti/funcoo.vim"
    Bundle "rizzatti/dash.vim"
  " }
" }

" vundle tear down {
  filetype plugin indent on
" }
