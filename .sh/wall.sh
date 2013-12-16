[ -z $1 ] && exit
while [ true ]
do
  for file in `ls ~/pic`
  do
    sleep $1
    pcmanfm  -w /home/x/pic/$file
  done
done
