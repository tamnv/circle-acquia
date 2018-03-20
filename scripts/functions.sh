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

rsync_repos() {
	echo -e "\n${txtylw}Prepare upstream repo for multidev${txtrst}"
	rm -rf $HOME/acquia/config
	rm -rf $HOME/acquia/docroot
  rm -rf $HOME/acquia/hooks
  rm -rf $HOME/acquia/vendor
  rm -rf $HOME/acquia/drush
  rm -f $HOME/acquia/load.environment.php

  mkdir -p vendor
  
	rsync -ar $CIRCLE_WORKING_DIRECTORY/docroot/ $HOME/acquia/docroot/
	rsync -ar $CIRCLE_WORKING_DIRECTORY/config/ $HOME/acquia/config/
  rsync -ar $CIRCLE_WORKING_DIRECTORY/hooks/ $HOME/acquia/hooks/
  rsync -ar $CIRCLE_WORKING_DIRECTORY/vendor/ $HOME/acquia/vendor/
  rsync -ar $CIRCLE_WORKING_DIRECTORY/drush/ $HOME/acquia/drush/
  ls $CIRCLE_WORKING_DIRECTORY
  cp $CIRCLE_WORKING_DIRECTORY/load.environment.php .
}