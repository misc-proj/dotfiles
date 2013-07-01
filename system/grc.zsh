# GRC colorizes nifty unix tools all over the place
unalias grc 2> /dev/null
if $(grc &>/dev/null) && ! $(brew &>/dev/null); then
  source `brew --prefix`/etc/grc.bashrc
fi
