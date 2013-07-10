path_add() {
  if [[ -d "$1" && -r "$1" ]]; then export PATH="$1:$PATH"; fi
}

path_add "$HOME/.nodenv/bin"
path_add "$ZSH/nodenv/node-build/bin"

unset -f path_add
