# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

if (( $+commands[npm] )); then source <(npm completion 2> /dev/null); fi
if (( $+commands[nohap] )); then source <(nohap completion); fi
