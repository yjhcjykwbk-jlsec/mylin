user=$1
mkdir $user
cd $user
mkdir -p pic/item/
for file in `find blog -type f`
do 
	echo "###################################################"
	imglist=`cat $file | grep -o '<img src="http://hiphotos.baidu.com/[^"]*"' | grep -o 'http://[^"]*'`
	for img in $imglist 
	do 
			echo $img
			imgfile=`echo $img| grep -o 'pic/item/.*'`
			echo $imgfile
			[ -f $imgfile ] || wget $img -O $imgfile
	done
	##mv *jpg* pic/item/
	sed -i 's/<img src="http:\/\/hiphotos.baidu.com/<img src="/g' $file  
	#sed -i 's/<a href="http:\/\/hi.baidu.com/<a href="/g' $file  
done
