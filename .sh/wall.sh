[ -z $1 ] && exit
mode="stretch"
[ -z $2 ] || mode=$2
while [ true ]
do
  for file in `ls --file-type *jpg`
  do
    if [ -f $file ]
    then
      sleep $1
      pcmanfm  -w `pwd`/$file --wallpaper-mode=$mode
    fi
  done
done
