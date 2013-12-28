#~/bin/bash
echo "killing $1";
threads=`ps -ef |grep "$1"| awk '{print $2}'`
echo $threads
for thread in $threads
do
	sudo kill -9 $thread
done
