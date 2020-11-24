#!/bin/bash

#format sdcard
mke2fs /dev/mmcblk0p1

#sdcard R/W
if [ ! -f "/var/tmp/sdcard/" ];
then

mkdir -p /var/tmp/sdcard

mount /dev/mmcblk0p1 /var/tmp/sdcard

while : ; do dd if=/dev/urandom of=/var/tmp/sdcard/test1.bin bs=1M count=500; dd if=/var/tmp/sdcard/test1.bin of=/var/tmp/sdcard/test2.bin;rm /var/tmp/sdcard/test1.bin ;/var/tmp/sdcard/test2.bin &> /dev/null; done &

fi

