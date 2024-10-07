#!/bin/bash

set -e

if [ $# -eq 0 ]; then
    cat <<EOF
    usage:  gitlazy [log message]

    This script pulls the latest source, adds all files, commits and pushes
    back to master. You can run as per the example below

        $ gitlazy updated modules for user management
        $ On branch master
        $ Your branch is up to date with 'origin/master'.
        $ Everything up-to-date

EOF
    exit 1
fi

git pull
git add -A
git commit -m "$@"
git push
