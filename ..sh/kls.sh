#~/bin/bash
threads=`ps -ef |grep "$1"|awk '{print $2}'`
echo "will kill $threads"
echo "begin kill"
kill -9 $threads
