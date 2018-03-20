#!/bin/sh
#
# Cloud Hook: drush-cache-clear and import config
#
# Run drush cache-clear all in the target environment. This script works as
# any Cloud hook.


# Map the script inputs to convenient names.
site=$1
target_env=$2
drush_alias=$site'.'$target_env

# Execute a standard drush command.
echo "Clear cache"
drush @$drush_alias cr

echo "Starting import config"
drush @$drush_alias cim vcs -y