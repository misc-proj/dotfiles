" search and display information from arbitrary sources like files, buffers, recently used files or registers, replaced kien/ctrlp.vim
NeoBundle "Shougo/unite.vim"

if neobundle#tap("unite.vim")
  function! neobundle#hooks.on_source(bundle)
    " use the fuzzy matcher for everything
    call unite#filters#matcher_default#use(["matcher_fuzzy"])
    call unite#filters#sorter_default#use(["sorter_rank"])
    call unite#set_profile("files", "context.smartcase", 1)

    call unite#custom#profile("default", "context", {
      \   "start_insert": 1,
      \   "prompt": "» ",
      \   "direction": "botright",
      \   "update_time": 200,
      \   "cursor_line_highlight": "PmenuSel",
      \ })

    " set up some custom ignores
    call unite#custom_source("file_rec,file_rec/async,file_mru,file,buffer,grep",
      \ "ignore_pattern", join([
        \ '\.git/',
        \ '\.hg/',
        \ '\.svn/',
        \ '\.bzr/',
        \ '\.cdv/',
        \ '_darcs/',
        \ 'CVS/',
        \ 'RCS/',
        \ 'SCCS/',
        \ 'tmp/',
        \ '_build/',
        \ 'autom4te\.cache/',
        \ '\.sass-cache/',
        \ 'node_modules/',
        \ 'bower_components/',
        \ 'dist/',
        \ 'Godeps/',
        \ '\~$',
        \ '#.+#$',
        \ '[._].*\.swp$',
        \ 'core\.\d+$',
        \ '\.pyc$',
        \ '\.exe$',
        \ '\.so$',
        \ '\.bak$',
        \ '\.png$',
        \ '\.jpg$',
        \ '\.jpeg$',
        \ '\.gif$',
        \ '\.zip$',
        \ '\.rar$',
        \ '\.tar$',
        \ '\.tar\.gz$',
        \ '\.tar\.bz2$',
        \ ], '\|')
    \ )

  endfunction

  call neobundle#untap()
endif

NeoBundleLazy "Shougo/neomru.vim",               {"autoload":{"unite_sources":["file_mru","directory_mru"]}}                          " unite.vim MRU sources, depends on Shougo/unite.vim
NeoBundleLazy "osyo-manga/unite-airline_themes", {"autoload":{"unite_sources":"airline_themes"}}                                      " unite airline themes, duh
NeoBundleLazy "ujihisa/unite-colorscheme",       {"autoload":{"unite_sources":"colorscheme"}}                                         " unite plugin for changing your colorscheme
NeoBundleLazy "tsukkee/unite-tag",               {"autoload":{"unite_sources":["tag","tag/file"]}}                                    " unite plugin for selecting tags or selecting files including tags
NeoBundleLazy "Shougo/unite-outline",            {"autoload":{"unite_sources":"outline"}}                                             " unite source which provides the buffer with an outline view
NeoBundleLazy "Shougo/unite-help",               {"autoload":{"unite_sources":"help"}}                                                " unite plugin for help
NeoBundleLazy "Shougo/unite-session",            {"autoload":{"unite_sources":["session","session/new"]}}                             " unite source which nominates sessions
NeoBundleLazy "thinca/vim-unite-history",        {"autoload":{"unite_sources":["history/command","history/search","history/yank"]}}   " unite source for history of command/search
NeoBundleLazy "Shougo/neossh.vim",               {"autoload":{"unite_sources":"ssh"}}                                                 " unite source which nominates files over ssh

" map space to the prefix for Unite
nnoremap [unite] <nop>
nmap <space> [unite]

nmap     <f1> [unite]h
nnoremap <f4> :UniteSessionSave

" nnoremap <leader>nbu  :Unite neobundle/update     -vertical -no-start-insert<cr>
" nnoremap <leader>nbua :Unite neobundle/update:all -vertical -no-start-insert<cr>

" ctrl-p: Find files
nmap <c-p> [unite]f

" ctrl-n Find files with option to create new
" nmap <c-n> [unite]n

" ctrl-o: Find MRU and buffers
nmap <c-o> [unite]b

" ctrl-e: Find (e)verything
"nmap <c-e> [unite]<space>

" ctrl-d: Command history using Unite
"nmap <c-d> [unite];

" ctrl-y: Yanks
"nmap <c-y> [unite]y

" ctrl-\: Quick outline
nmap <silent> <c-\> [unite]o

" ctrl-sg: Reopen last grep window
nnoremap <c-s><c-g> :UniteResume -buffer-name=grep<cr>

" ctrl-ss: (S)earch word under cur(s)or in current directory
nnoremap <c-s><c-s> :Unite -buffer-name=grep grep:.::<c-r><c-w><cr>

" ctrl-sd: (S)earch word in current (d)irectory (prompt for word)
nnoremap <c-s><c-d> :Unite -buffer-name=grep grep:.<cr>

" ctrl-sf: Quickly (s)earch in (f)ile
nmap <c-s><c-f> [unite]l

" ctrl-c: (C)hange (c)urrent directory
nmap <c-c> [unite]d

" ctrl-/: A more powerful '/' TODO(jrubin)
"nmap <c-_> [unite]l

" ctrl-space: Quick scratch buffer
nmap <c-space> [unite]j

" quick buffer open
nmap gb [unite]s

nnoremap <silent> [unite]<space> :Unite -buffer-name=mixed       -toggle -auto-resize          file_rec/async:! buffer file_mru bookmark<cr>
nnoremap <silent> [unite]r       :Unite -buffer-name=register                                  register<cr>
nnoremap <silent> [unite]f       :Unite -buffer-name=files       -toggle -auto-resize          file_rec/async:!<cr>
nnoremap <silent> [unite]n       :Unite -buffer-name=files       -toggle -auto-resize          file_rec/async:! file/new<cr>
nnoremap <silent> [unite]e       :Unite -buffer-name=recent                                    file_mru<cr>
nnoremap <silent> [unite]y       :Unite -buffer-name=yank                                      history/yank<cr>
nnoremap <silent> [unite]l       :Unite -buffer-name=search_file -auto-resize                  line<cr>
nnoremap <silent> [unite]b       :Unite -buffer-name=buffers     -auto-resize                  buffer<cr>
nnoremap <silent> [unite]/       :Unite -buffer-name=grep        -no-quit                      grep:.<cr>
nnoremap <silent> [unite]m       :Unite -buffer-name=mappings    -auto-resize                  mapping<cr>
nnoremap <silent> [unite];       :Unite -buffer-name=history     -default-action=edit          history/command command<cr>
nnoremap <silent> [unite]d       :Unite -buffer-name=change-cwd  -default-action=cd            directory_mru directory_rec/async:!<cr>
nnoremap <silent> [unite]s       :Unite -quick-match buffer<cr>

nnoremap <silent> [unite]a       :Unite -buffer-name=airline_themes -winheight=10 -auto-preview airline_themes<cr>
nnoremap <silent> [unite]c       :Unite -buffer-name=colorschemes   -winheight=10 -auto-preview colorscheme<cr>
nnoremap <silent> [unite]t       :Unite -buffer-name=tag            -auto-resize tag tag/file<cr>
nnoremap <silent> [unite]o       :Unite -buffer-name=outline        -vertical outline<cr>
nnoremap <silent> [unite]h       :Unite -buffer-name=help           -auto-resize help<cr>
nnoremap <silent> [unite]j       :Unite -buffer-name=junk           -auto-resize junkfile junkfile/new<cr>
nnoremap <silent> [unite]p       :Unite -buffer-name=sessions       session<cr>

let g:unite_data_directory=GetCacheDir("unite")
let g:unite_source_history_yank_enable=1     " enable history yank source

let g:neomru#file_mru_limit = 1000
let g:neomru#filename_format = ":~:."
let g:neomru#time_format = ""

if executable("ag")
  let g:unite_source_grep_command = "ag"
  let g:unite_source_grep_default_opts = "--noheading --nocolor --nogroup --line-numbers -S"
  let g:unite_source_grep_recursive_opt = ""
endif

let g:unite_source_rec_max_cache_files = 99999

" custom Unite settings
autocmd MyAutoCmd FileType unite call s:unite_settings()
function! s:unite_settings()  " {{{
  " escape to exit unite window
  nmap <buffer> <esc> <plug>(unite_exit)
  imap <buffer> <esc> <plug>(unite_exit)

  imap <buffer> <c-j> <plug>(unite_select_next_line)
  imap <buffer> <c-k> <plug>(unite_select_previous_line)

  nmap <buffer> <c-j> <plug>(unite_loop_cursor_down)
  nmap <buffer> <c-k> <plug>(unite_loop_cursor_up)

  nmap <buffer> <tab>   <plug>(unite_loop_cursor_down)
  nmap <buffer> <s-tab> <plug>(unite_loop_cursor_up)
  " imap <buffer> <e-a>   <plug>(unite_choose_action)
  imap <buffer> <tab>   <plug>(unite_insert_leave)
  imap <buffer> <c-w>   <plug>(unite_delete_backward_word)
  imap <buffer> <c-u>   <plug>(unite_delete_backward_path)
  imap <buffer> '       <plug>(unite_quick_match_default_action)
  nmap <buffer> '       <plug>(unite_quick_match_default_action)
  nmap <buffer> <c-r>   <plug>(unite_redraw)
  imap <buffer> <c-r>   <plug>(unite_redraw)

  inoremap <buffer> <expr> <c-d> unite#do_action("delete")
  nnoremap <buffer> <expr> <c-d> unite#do_action("delete")

  " open file in new window or tab
  inoremap <silent> <buffer> <expr> <c-s> unite#do_action("split")
  nnoremap <silent> <buffer> <expr> <c-s> unite#do_action("split")
  inoremap <silent> <buffer> <expr> <c-v> unite#do_action("vsplit")
  nnoremap <silent> <buffer> <expr> <c-v> unite#do_action("vsplit")

  let unite = unite#get_current_unite()
  if unite.buffer_name =~# "^search"
    nnoremap <silent> <buffer> <expr> r unite#do_action("replace")
  else
    nnoremap <silent> <buffer> <expr> r unite#do_action("rename")
  endif

  nnoremap <silent> <buffer> <expr> cd unite#do_action("lcd")

  " using Ctrl-\ to trigger outline, so close it using the same keystroke
  if unite.buffer_name =~# '^outline'
    imap <buffer> <c-\> <plug>(unite_exit)
  endif

  " using Ctrl-/ to trigger line, close it using same keystroke TODO(jrubin)
  "if unite.buffer_name =~# '^search_file'
  "  imap <buffer> <c-_> <plug>(unite_exit)
  "endif
endfunction
" }}}

let g:unite_source_session_enable_auto_save = 1
let g:unite_source_session_path = GetCacheDir("sessions")
