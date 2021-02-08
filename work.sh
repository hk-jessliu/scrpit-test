#!/bin/bash

export LC_TIME=en_US.utf8
path1=/mnt/Public/Jess/image/traffic-SDWAN
path2=/home/jessliu
oldtraffic=/mnt/Public/Jess/image/traffic-SDWAN/old-traffic
day1=$(date -d '1days ago' "+%b-%d-%Y")
day3=$(date -d '3days ago' "+%b-%d-%Y")
file1=traffic-server

init(){

      rm -rf /home/jessliu/${file1}.*.tgz
      
      if [ -f "${path1}"/${file1}.${day1}.tgz ];then
      	
	      cp ${path1}/${file1}.${day1}.tgz ${path2}
	      echo "Day 1 new traffic ok"
      else
	      echo "NO Day 1 traffic"
      fi

      if [ -f "${path1}"/${file1}.${day3}.tgz ];then

	      cp ${path1}/${file1}.${day3}.tgz ${path2}
	      echo "Day 3 new traffic ok"
      else
	      echo "NO Day 3 traffic"
      fi
}

old(){

	if [ -f	"${path1}"/${file1}.*.tgz	];then
	 	sudo mv ${path1}/${file1}.*.tgz ${oldtraffic}
        	echo "old traffic move complete"
	fi
}


updateaws(){
	
	cd ${path2}
	scp -i demo-joewu@ubuntu.pem ${file1}.*.tgz ubuntu@54.75.9.154:/home/ubuntu 
	scp -i demo-joewu@ubuntu.pem ${file1}.*.tgz ubuntu@34.240.170.61:/home/ubuntu
}


init
updateaws
old
