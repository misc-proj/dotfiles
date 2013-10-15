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
