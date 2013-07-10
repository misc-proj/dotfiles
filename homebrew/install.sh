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
  ntfs-3g \
  fasd \
  git \
  git-flow \
  lesspipe \
  macvim \
  phantomjs \
  postgresql \
  ipcalc \
  nmap \
  gnu-sed --default-names \
  sipcalc \
  python \
  python3 \
  zsh \
  vim \
  tmux \
  sshfs \
  subversion \
  tree \
  watch \
  wget \
  ssh-copy-id \
  go \
  lua \
  cppcheck \
  dart \
  ext4fuse \
  pstree \
  grc

exit 0
