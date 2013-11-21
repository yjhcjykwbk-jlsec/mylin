#!/bin/sh
#git add *.cc *.h *.in *.sh
#echo "git remote set-url $1 git@github.com:stevenberge/$2.git"
git commit -m "$1"
git push origin master
