##first make sure your block is off for wifi
#sudo rfkill unblock wifi  #解锁wifi
echo "sudo rfkill unblock all"  #解锁wifi
sudo rfkill unblock all  #解锁wifi
#sudo rfkill list all      #查看wifi锁状况
#{
	#0: ideapad_wlan: Wireless LAN
	#	Soft blocked: no
	#	Hard blocked: no
	#1: phy0: Wireless LAN
	#	Soft blocked: no
	#	Hard blocked: yes
#}
#echo "sudo ifconfig wlan0 down"
#sudo ifconfig wlan0 down

echo "sudo ifconfig wlan0 up"
sudo ifconfig wlan0 up
echo "sudo iwconfig wlan0 essid UTSZ channel $1 " #freq 2.412G" #channel $1"
sudo iwconfig wlan0 essid UTSZ channel $1 #freq 2.412G #channel $1
#RTNETLINK answers: Operation not possible due to RF-kill
echo "sudo dhclient wlan0"

#kill dhclient threads
threads=`ps -ef |grep "ifconfig"|awk '{print $2}'`
for thread in $threads
do
	sudo kill -9 $thread
done
#get a new ip
sudo dhclient wlan0
