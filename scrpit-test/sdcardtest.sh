#!/bin/sh


if [ ! -f "/mnt/addDisk1/pro/sdcard/ " ];

then
   
   mkdir -p /mnt/addDisk1/pro/sdcard 
   sleep 1;
   echo "xxx" > /mnt/addDisk1/pro/sdcard/a.txt
  # sleep 1;
   cat /mnt/addDisk1/pro/sdcard/a.txt
  # sleep 1;
   rm -rf /mnt/addDisk1/pro/sdcard

fi


