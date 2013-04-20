#!/bin/sh
#ipvs.sh
_echo (){
	echo  "\033[31m$1\033[0m"
}
_echo 'eth0:0 settings'
sudo ifconfig eth0:0 down 
_echo 'sudo ifconfig eth0:0 10.7.62.74 broadcast 10.7.62.74 netmask 255.255.255.255'
sudo ifconfig eth0:0 10.7.62.74 broadcast 10.7.62.74 netmask 255.255.248.0
_echo 'sudo route add -host 10.7.62.74 dev eth0:0'
sudo route add -host 10.7.62.74 dev eth0:0
_echo "ipvs settings"
sudo ipvsadm -C
sudo ipvsadm -At 10.7.62.74:80 -s rr
sudo ipvsadm -at 10.7.62.74:80 -r 219.223.192.135:80 -g
sudo ipvsadm -L -n
