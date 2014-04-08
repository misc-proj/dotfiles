if [[ -s "$HOME/.gvm/scripts/completion" ]]; then
  autoload -Uz bashcompinit
  bashcompinit
  source "$HOME/.gvm/scripts/completion"
fi
