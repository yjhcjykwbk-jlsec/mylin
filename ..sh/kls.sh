#~/bin/bash
kls=$(ps -ef |grep $1|awk '{print $2}')
echo $kls
kill -9 $kls
