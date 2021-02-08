#!/bin/bash

init(){

      dpath=/dev/shm
      hpath=/home/jessliu 
      epath=/mnt/Engineering/Project_Management/General/TechnicalData/TestCaseDocument/TestPlan/Link_Abstraction/traffic

}

up(){

     cd ${dpath}
     rm -rf traffic*
     if [ -f  "${dpath}"/traffic*   ];then
     
        echo "have old traffic"
    
     else 
       
	echo "clean old traffic & copy new traffic"
       	cp ${epath}/traffic_* ${dpath}

     if [ -f  "${dpath}"/traffic* ];then
        
        echo "new traffic ok"
        tar xvf traffic*
        cd traffic
        demo/run-aws.sh setup
        demo/run-aws.sh createpkg

     fi
 
     fi

}

Aws(){
      
      if [ -f "${hpath}"/traffic.tgz ];then
	      echo "have traffic.tgz"
	      scp -i /mnt/Public/Jess/demo-joewu@ubuntu.pem ${hpath}/traffic.tgz ubuntu@54.229.207.114:/home/ubuntu
	      echo "update aws traffic ok"
      fi


}

init
up
Aws
