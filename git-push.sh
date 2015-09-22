#!/bin/bash

if [ $# -eq 0 ]; then
  echo "Usage: ./git-push.sh [commit message]"
else
  git add --all
  git commit -m "$1"
  git push -u origin master
fi
