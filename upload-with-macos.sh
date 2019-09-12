#!/usr/bin/env bash
BASEDIR=$(dirname $(readlink -f $0))
source $BASEDIR/conf.sh
git config --local user.name "Tangyeye"
git config --local user.email "3035790003@qq.com"
git add -A
git commit -m "update"
git pull git@github.com:Tangyeye/$REPOSITORY_NAME.git master
git push git@github.com:Tangyeye/$REPOSITORY_NAME.git master
