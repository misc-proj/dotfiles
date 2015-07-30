set formatoptions=croqlt

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

set linebreak              " wrap lines at convenient points
set textwidth=80
set nowrap                 " don't wrap lines
set whichwrap+=<,>,[,]
set autoindent
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set shiftround
set nojoinspaces
set splitright
set splitbelow
set smartindent
set smarttab
set nocopyindent

if has("conceal")
  set conceallevel=1
  set listchars+=conceal:Δ
endif
