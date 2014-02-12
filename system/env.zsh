if (( $+commands[mvim] )); then
  export EDITOR="mvim"
  export VISUAL="mvim"
else
  export EDITOR="vim"
  export VISUAL="vim"
fi

java_home="/usr/libexec/java_home"
if [[ -r $java_home ]]; then
  export JAVA_HOME=`$java_home 2> /dev/null`; fi
unset java_home

prefix="/usr"
if [[ "$OSTYPE" == darwin* ]]; then prefix=$(brew --prefix); fi

lesspipe="$prefix/bin/lesspipe"
if [[ ! -r $lesspipe ]]; then lesspipe="$prefix/bin/lesspipe.sh"; fi

if [[ -r $lesspipe ]]; then
  export LESSOPEN="| $lesspipe %s"
  export LESSCLOSE="$lesspipe %s %s"
fi

unset lesspipe

pythonpath="$prefix/lib/python2.7/site-packages"
if [[ -r $pythonpath ]]; then export PYTHONPATH="$pythonpath:$PYTHONPATH"; fi
unset pythonpath

unset prefix

if (( $+commands[virtualenvwrapper_lazy.sh] )); then
  export WORKON_HOME=$HOME/.virtualenvs
  export PROJECT_HOME=$HOME/working
  export VIRTUALENVWRAPPER_SCRIPT=$(which virtualenvwrapper.sh)
  source $(which virtualenvwrapper_lazy.sh)
fi

if [[ -r /usr/local/opt/autoenv/activate.sh ]]; then
  unalias cd
  source /usr/local/opt/autoenv/activate.sh
fi

VIRTUAL_ENV_DISABLE_PROMPT=true

if [[ -x ${HOME}/.gocode ]]; then
  export GOPATH=${HOME}/.gocode
fi

export VAGRANT_DEFAULT_PROVIDER="vmware_fusion"
