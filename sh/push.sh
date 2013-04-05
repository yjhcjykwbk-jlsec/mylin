#!/bin/sh
git add *.cc *.h *.in *.sh
git commit -m ".."
git push $1 master
