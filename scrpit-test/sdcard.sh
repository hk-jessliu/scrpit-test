#!/bin/bash

#format sdcard
mke2fs /dev/mmcblk0p1 

#sdcard test
if [ ! -f "/var/tmp/sdcard/" ];
then
        mkdir -p /var/tmp/sdcard
	sleep 1; 
        mount /dev/mmcblk0p1 /var/tmp/sdcard
        sleep 1;
	echo "xxx" > /var/tmp/sdcard/a.txt
        cat /var/tmp/sdcard/a.txt
        #sleep 1
	rm -rf /var/tmp/sdcard/a.txt
        umount /var/tmp/sdcard
fi
       
        #rm -rf /var/tmp/sdcard/a.txt
        #umount /var/tmp/sdcard




	#mount /dev/mmcblk0p1 /tmp/sdcard
	#echo xxx > /var/tmp/sdcard/a.txt
	#cat /var/tmp/sdcard/a.txt
        #rm /var/tmp/sdcard/a.txt
        #umount /var/tmp/sdcard/
