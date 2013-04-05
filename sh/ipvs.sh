#!/bin/sh
#ipvs.sh
_echo (){
	echo  "\033[31m$1\033[0m"
}
_echo 'eth0:0 settings'
sudo ifconfig eth0:0 down 
_echo 'sudo ifconfig eth0:0 219.223.195.8 broadcast 219.223.195.8 netmask 255.255.255.0'
sudo ifconfig eth0:0 219.223.195.8 broadcast 219.223.195.8 netmask 255.255.248.0
_echo 'sudo route add -host 219.223.195.8 dev eth0:0'
sudo route add -host 219.223.195.8 dev eth0:0
_echo "ipvs settings"
sudo ipvsadm -C
sudo ipvsadm -At 219.223.195.8:80 -s rr
sudo ipvsadm -at 219.223.195.8:80 -r 219.223.192.135 -g
sudo ipvsadm -L -n
