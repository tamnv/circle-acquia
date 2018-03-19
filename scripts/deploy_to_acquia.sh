#!/bin/bash

cd scripts
source functions.sh
echo -e "\n${txtgrn}Pushing the master branch to Github Upstream ${txtrst}"
prepare_acquia_folder

cd $HOME/acquia
git add -A --force .
git commit -m "Circle CI build a test message"
git push -u origin master --force