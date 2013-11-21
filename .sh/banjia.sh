files=`ls . -a | grep "^\.[^\.].*"`
echo $files
for file in $files
do	
	echo "mv $file /old/home/ext/"
	mv $file /old/home/ext/
done
for file in $files
do
	echo "sudo ln -s /old/home/ext/$file $file"
	sudo ln -s /old/home/ext/$file $file
done
