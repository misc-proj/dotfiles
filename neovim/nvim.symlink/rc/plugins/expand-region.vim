let g:expand_region_use_select_mode = 0

" extend the global dictionary
call expand_region#custom_text_objects({
  \ 'a]'  :1,
  \ "ab"  :1,
  \ "aB"  :1,
  \ "ii"  :0,
  \ "ai"  :0,
  \ })

" customize it further for html
call expand_region#custom_text_objects("html", {
  \ "it" :1,
  \ })

" +: expand-region
vmap + <plug>(expand_region_expand)

" -: shrink-region
map - <plug>(expand_region_shrink)
