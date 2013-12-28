sudo ifconfig lo:0 192.168.3.40 netmask 255.255.255.255 broadcast 192.168.3.40 up
sudo route add -host 192.168.3.40 dev lo:0
