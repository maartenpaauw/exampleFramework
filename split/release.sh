#!/usr/bin/env bash

set -e;

if (( "$#" != 1 ))
then
    echo "Tag has to be provided";

    exit 1;
fi

CURRENT_BRANCH="master";

for REMOTE in "module-a" "module-b"
do
    echo "";
    echo "";
    echo "Releasing $REMOTE";

    TMP_DIR="/tmp/example-framework-split";
    REMOTE_URL="git@github.com:maartenpaauw/$REMOTE.git";

    rm -rf $TMP_DIR;
    mkdir $TMP_DIR;

    (
        cd $TMP_DIR;

        git clone $REMOTE_URL .;
        git checkout "$CURRENT_BRANCH";

        git tag $1;
        git push origin --tags;
    )
done
