source /opt/boxen/env.sh

force_path_add() {
  export PATH="$1:$PATH"
}

path_add() {
  if [[ -d "$1" && -r "$1" ]]; then force_path_add "$@"; fi
}

path_add "$HOME/bin"
path_add "$HOME/working/android-sdk-macosx/tools"
path_add "$HOME/working/android-sdk-macosx/platform-tools"
path_add "$HOME/working/depot_tools"
path_add "$HOME/working/arcanist/bin"

force_path_add "node_modules/.bin"

unset -f path_add
unset -f force_path_add
