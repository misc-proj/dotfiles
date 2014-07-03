# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
alias ls="ls --color=auto --group-directories-first"
alias l="ls -lAh"
alias ll="ls -l"
alias la="ls -A"
alias v="ls -l"

alias c="clear"
alias cdc="cd && clear"

#alias less="less -r"  ## this was causing problems when less read from stdin
alias screen="screen -T ${TERM}"

alias egrep="egrep --color=auto"
alias fgrep="fgrep --color=auto"
alias grep="grep --color=auto"

if (( $+commands[gitjk_cmd] )); then
  alias gitjk="history -n | tail -n 10 | (tac || tail -r) | gitjk_cmd"
fi

if (( $+commands[gh] )); then
  eval "$(gh alias -s)"
fi
