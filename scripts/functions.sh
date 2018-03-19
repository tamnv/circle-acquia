#!/bin/bash
prepare_acquia_folder() {
  cd $HOME

  # Prepare pantheon repo folder.
  if [ ! -d "$HOME/acquia" ]; then
    git clone $ACQUIA_REPO acquia
  fi
  cd $HOME/acquia
  git fetch
  git pull origin master
}
