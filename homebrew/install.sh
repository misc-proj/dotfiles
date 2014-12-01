#!/bin/sh
#
# Homebrew
#
# This installs some of the common dependencies needed (or at least desired)
# using Homebrew.

# Check for Homebrew
if test ! $(which brew); then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

# Install homebrew packages
brew install \
  berkeley-db \
  cmake \
  coreutils \
  fasd \
  git \
  git-flow \
  lesspipe \
  python --framework \
  python3 --framework \
  vim --with-lua --with-luajit --override-system-vi --with-mzscheme --with-tcl \
  macvim --with-lua --with-luajit \
  postgresql \
  ipcalc \
  nmap \
  gnu-sed --default-names \
  sipcalc \
  zsh \
  tmux \
  subversion \
  tree \
  watch \
  wget \
  ssh-copy-id \
  go \
  lua \
  cppcheck \
  pstree \
  grc \
  reattach-to-user-namespace

exit 0
