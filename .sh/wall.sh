cd ~/pic
[ -z $1 ] && exit
while [ true ]
do
  for file in `ls .`
  do
    if [ -f $file ]
    then
      sleep $1
      pcmanfm  -w /home/x/pic/$file
    fi
  done
done
