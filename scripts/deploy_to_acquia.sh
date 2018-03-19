#!/bin/bash

cd scripts
source functions.sh
echo -e "\n${txtgrn}Pushing the master branch to Github Upstream ${txtrst}"
prepare_acquia_folder
rsync_repos

cd $HOME/acquia
git config --global user.email $GIT_EMAIL
git config --global user.name $GIT_USERNAME
git add -A --force .
git commit -m "Circle CI build a test message"
git push -u origin master --force