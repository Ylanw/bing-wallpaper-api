#!/bin/sh
set -e

if test -z "$(git status -s)"; then
  echo 'no commit'
  exit 0;
else
  git config --local user.email "3572066061@qq.com"
  git config --local user.name "yanglan2004511"
  git pull origin master
  git add data/*
  git commit -m "update bing json"
fi
