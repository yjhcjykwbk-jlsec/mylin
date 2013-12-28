#!/bin/bash
[ -z $1 ] && exit
mode="stretch"
[ -z $2 ] || mode=$2
files=`ls --file-type *jpg`
# OLD_IFS="$IFS"
# IFS=" "
arr=($files)
# IFS="$OLD_IFS"
cnt=${#arr[@]} 
echo $cnt
while [ true ]
do
  random=`date +%s%N`
  echo $random
  # i=`expr $random % $cnt`
  ((i=random%cnt))
  file=${arr[$i]}
  echo $file
  if [ -f $file ]
  then
    pcmanfm  -w `pwd`/$file --wallpaper-mode=$mode
    sleep $1
  fi
done
