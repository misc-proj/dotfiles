path[1,0]="$ZSH/bin"
path[1,0]="$HOME/bin"

if [[ "$OSTYPE" == darwin* ]]; then
  path[1,0]="$HOME/working/android-sdk-macosx/tools"
  path[1,0]="$HOME/working/android-sdk-macosx/platform-tools"
  path[1,0]="/Applications/VMware Fusion.app/Contents/Library"
else
  path[1,0]="$HOME/working/android-sdk-linux/tools"
  path[1,0]="$HOME/working/android-sdk-linux/platform-tools"
fi

path[1,0]="/usr/local/packer"
path[1,0]="/usr/local/terraform"
path[1,0]="/usr/local/google-cloud-sdk/bin"

path=($^path(N))
path[1,0]="node_modules/.bin"
path[1,0]="bin"
