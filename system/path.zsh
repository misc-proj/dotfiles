force_path_add() {
  export PATH="$1:$PATH"
}

path_add() {
  if [[ -d "$1" && -r "$1" ]]; then force_path_add "$@"; fi
}

if [[ "$OSTYPE" == darwin* ]]; then
  path_add "$(brew --prefix)/opt/coreutils/libexec/gnubin"
fi

path_add "/usr/local/opt/ruby/bin"
path_add "$ZSH/bin"
path_add "$HOME/.local/bin"
path_add "$HOME/bin"
path_add "/usr/local/go_appengine"
path_add "$HOME/working/android-sdk-macosx/tools"
path_add "$HOME/working/android-sdk-macosx/platform-tools"
path_add "$HOME/working/pebble-dev/PebbleSDK-2.0-BETA4/bin"
path_add "$HOME/Library/Python/2.7/bin"
path_add "/Applications/VMware Fusion.app/Contents/Library"

if (( $+commands[go] )); then
  GOVER=`go version | awk '{print $3}' | sed 's/^go\(.*\)$/\1/'`
  path_add "/usr/local/Cellar/go/${GOVER}/libexec/pkg/tool/darwin_amd64"
  path_add "/usr/local/Cellar/go/${GOVER}/libexec/bin"
  unset $GOVER
  path_add "$HOME/.gocode/bin"
fi

force_path_add "node_modules/.bin"
force_path_add "bin"

unset -f path_add
unset -f force_path_add
