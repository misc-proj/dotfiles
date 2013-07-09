force_manpath_add() {
  export MANPATH="$1:$MANPATH"
}

manpath_add() {
  if [[ -d "$1" && -r "$1" ]]; then force_manpath_add "$@"; fi
}

manpath_add "$(brew --prefix)/opt/coreutils/libexec/gnuman"

unset -f manpath_add
unset -f force_manpath_add
