#!/bin/sh
rm a.out
g++ $1.cc
cat $1.in | ./a.out
