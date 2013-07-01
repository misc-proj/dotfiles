source /opt/boxen/env.sh

path_add() {
  if [ -d "$1" -a -r "$1" ]; then
    export PATH="$1:$PATH"
  fi
}

path_add "~/bin"
path_add "~/working/android-sdk-macosx/tools"
path_add "~/working/android-sdk-macosx/platform-tools"
path_add "~/working/depot_tools"
path_add "~/working/arcanist/bin"

unset -f path_add
