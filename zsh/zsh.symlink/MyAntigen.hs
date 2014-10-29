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
  , bundle "Tarrasch/zsh-command-not-found"
  , bundle "zsh-users/zsh-syntax-highlighting"
  , bundle "zsh-users/zsh-history-substring-search"
  -- Add your plugins here
  ]

config = AntigenConfiguration bundles

main :: IO ()
main = shelly $ antigen config
