if [[ "$OSTYPE" != darwin* ]]; then return 1; fi

unalias run-help
autoload run-help
export HELPDIR="$(brew --prefix)/share/zsh/helpfiles"
