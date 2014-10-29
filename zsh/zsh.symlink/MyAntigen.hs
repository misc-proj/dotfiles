{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE ExtendedDefaultRules #-}
module MyAntigen where

import Antigen (AntigenConfiguration (..), bundle, antigen)
import Shelly (shelly)

bundles =
  [ bundle "joshuarubin/zsh-environment"
  , bundle "joshuarubin/zsh-terminal"
  , bundle "joshuarubin/zsh-editor"
  , bundle "joshuarubin/zsh-history"
  , bundle "joshuarubin/zsh-directory"
  , bundle "joshuarubin/zsh-spectrum"
  , bundle "joshuarubin/zsh-helper"
  , bundle "joshuarubin/zsh-gnu-utility"
  , bundle "joshuarubin/zsh-utility"
  , bundle "joshuarubin/zsh-completion"
  , bundle "joshuarubin/zsh-archive"
  , bundle "joshuarubin/zsh-fasd"
  , bundle "joshuarubin/zsh-git"
  , bundle "joshuarubin/zsh-osx"
  , bundle "joshuarubin/zsh-ssh"
  , bundle "joshuarubin/zsh-prompt"
  , bundle "joshuarubin/zsh-tmux"
  , bundle "joshuarubin/zsh-rsync"
  , bundle "joshuarubin/zsh-secrets"
  , bundle "joshuarubin/zsh-zmv"
  , bundle "joshuarubin/zsh-gvm"
  , bundle "joshuarubin/zsh-nodenv"
  , bundle "joshuarubin/zsh-rvm"
  , bundle "joshuarubin/zsh-grc"
  , bundle "joshuarubin/zsh-java"
  , bundle "joshuarubin/zsh-python"
  , bundle "joshuarubin/zsh-direnv"
  , bundle "joshuarubin/zsh-homebrew"
  , bundle "joshuarubin/zsh-perl"
  , bundle "joshuarubin/zsh-screen"
  , bundle "joshuarubin/zsh-dpkg"
  , bundle "Tarrasch/zsh-command-not-found"
  , bundle "Tarrasch/zsh-mcd"
  , bundle "zsh-users/zsh-syntax-highlighting"
  , bundle "zsh-users/zsh-history-substring-search"
  ]

config = AntigenConfiguration bundles

main :: IO ()
main = shelly $ antigen config
