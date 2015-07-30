function! GetCacheDir(suffix)
  return resolve(expand(g:cache_dir . a:suffix))
endfunction

function! s:ensure_exists(path)
  if !isdirectory(expand(a:path))
    call mkdir(expand(a:path))
  endif
endfunction

call s:ensure_exists(g:cache_dir)

" persistent undo
if has("persistent_undo")
  set undofile
  let &undodir=GetCacheDir("undo")
  call s:ensure_exists(&undodir)
endif

" backups
set backup
let &backupdir=GetCacheDir("backup")
call s:ensure_exists(&backupdir)

" swap files
let &directory=GetCacheDir("swap")
call s:ensure_exists(&directory)
