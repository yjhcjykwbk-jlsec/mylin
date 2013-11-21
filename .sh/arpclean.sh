#!/bin/sh
arp -n | awk '/^[0-9]/{print "sudo arp -d " $1}' 
