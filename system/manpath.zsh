force_manpath_add() {
  export MANPATH="$1:$MANPATH"
}

manpath_add() {
  if [[ -d "$1" && -r "$1" ]]; then force_manpath_add "$@"; fi
}

if [[ "$OSTYPE" == darwin* ]]; then
  manpath_add "$(brew --prefix)/opt/coreutils/libexec/gnuman"
fi

unset -f manpath_add
unset -f force_manpath_add
