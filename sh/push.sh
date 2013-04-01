#!/bin/sh
git add *.cc *.h *.in
git commit -m ".."
echo "aaaaa" | git push origin master
