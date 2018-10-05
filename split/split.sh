#!/usr/bin/env bash

set -e;
set -x;

CURRENT_BRANCH="master";

function remote()
{
    git remote add $1 "git@github.com:maartenpaauw/$1.git" || true;
}

function split()
{
    SHA1=`splitsh-lite --prefix=$1`;
    git push $2 "$SHA1:refs/heads/$CURRENT_BRANCH" -f;
}

git pull origin $CURRENT_BRANCH;

remote "module-a";
remote "module-b";

split 'src/moduleA' "module-a";
split 'src/moduleB' "module-b";
