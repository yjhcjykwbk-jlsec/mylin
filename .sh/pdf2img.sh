echo "pdf2img [xx.pdf] [pagenum]"
i=1
while [ $i -le $2 ] 
do 
  echo "pdf2svg $1 $i.svg $i" && i=`expr $i + 1`
done;
[ $2 != "" ] || exit
read -p "trans now, Y/N ?" choice
echo $choice
[ $choice != "Y" ] && exit
i=1;while [ $i -le $2 ] ;do pdf2svg $1 $i.svg $i && i=`expr $i + 1`; done;
