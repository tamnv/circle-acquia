#!/bin/sh
#
# Cloud Hook: drush-cache-clear
#
# Run drush cache-clear all in the target environment. This script works as
# any Cloud hook.


# Map the script inputs to convenient names.
site=$1
target_env=$2
drush_alias=$site'.'$target_env

# Execute a standard drush command.
echo "Clear cache here 2"
drush @$drush_alias cr
drush @$drush_alias cim -y