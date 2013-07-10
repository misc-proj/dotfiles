# only init if installed.
if (( ! $+commands[fasd] )); then return 1; fi
## prezto doesn't set the default aliases like 'z'
eval "$(fasd --init posix-alias)"
