#!/bin/bash
#	author = 'Kim Hyung Seok'
#	Date = 190612
#	version = 0.0.1
#	Packages = python3 bluepy
#	Library = libglib2.0-dev , mitemp.git, btlewrap.git	
#	Command = python3 ./demo.py --backend bluepy poll {YOUR_MACADDRESS}
# 
#	[Comment]
#		This Script using for scanning temprature and humidify in serverroom. 
#		Just Testing in Raspberry_Pi3 and, just monitor terminor working
#
#	[Target]
#		WatchDog After something recieved signal, alert to slack-bot using by zabbix
#		This shell script operate terminal monitoring
#		Added Logfile
#		Added system time. using date.


name="ServerRoom Temperature Checker"
logpath=/home/pi/Oddtemper/odd/log/
echo $name
#date

#Operate
#python3 /home/pi/mitemp/demo.py --backend bluepy poll 4c:65:a8:da:ea:de
sleep 1
#Log Save
python3 /home/pi/mitemp/demo.py --backend bluepy poll 4c:65:a8:da:ea:de >> $logpath/tempMonitor.txt
sleep 2

$echo date  >> $logpath/tempMonitor.txt

$echo "-----------------------------------" >> $logpath/tempMonitor.txt
