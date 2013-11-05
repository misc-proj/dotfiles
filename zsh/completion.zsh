# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

if (( $+commands[npm] )); then source <(npm completion); fi
if (( $+commands[nohap] )); then source <(nohap completion); fi

arcanist="~/working/arcanist/resources/shell/bash-completion"
if [[ -d $arcanist && -r $arcanist ]]; then
  source ~/working/arcanist/resources/shell/bash-completion
fi
unset arcanist
