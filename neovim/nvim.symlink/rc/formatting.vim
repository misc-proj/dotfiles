set formatoptions=croqlt

if v:version > 703 || v:version == 703 && has("patch541")
  set formatoptions+=j " Delete comment character when joining commented lines
endif

set textwidth=80
set shiftwidth=2
set tabstop=2
set softtabstop=2
set nojoinspaces
set smartindent
set nocopyindent
