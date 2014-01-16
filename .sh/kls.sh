#~/bin/bash
echo "killing $1";
for thread in `ps -ef |grep "$1"| awk '{print $2}'`
do
	[ $thread != $$ ] && sudo kill -9 $thread
done
