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
path_add "$HOME/working/android-sdk-macosx/tools"
path_add "$HOME/working/android-sdk-macosx/platform-tools"
path_add "/usr/local/google-cloud-sdk/bin"
path_add "$HOME/Library/Python/2.7/bin"
path_add "/Applications/VMware Fusion.app/Contents/Library"

force_path_add "node_modules/.bin"
force_path_add "bin"

unset -f path_add
unset -f force_path_add
