#!/bin/sh
#git add *.cc *.h *.in *.sh
echo "git remote set-url $1 git@github.com:stevenberge/$2.git"
echo "git commit -m .."
echo "git push $1 $2"
