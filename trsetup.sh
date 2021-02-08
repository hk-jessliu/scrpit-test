#!/bin/bash

set -x   

init(){
      
	Dev_path=/dev/shm
        Home_path=${HOME}      
        Share_path=/mnt/Engineering/Project_Management/General/TechnicalData/TestCaseDocument/TestPlan/Link_Abstraction/traffic
}

remove_tar(){
   
       cd ${Home_path}
       sudo rm -rf traffic.tgz
       cd ${Dev_path}
       sudo rm -rf traffic*      

}

cp_traffic(){

       sudo  cp ${Share_path}/traffic*.tar /dev/shm 

}

create_tar_file(){
        
        cd ${Dev_path}
        traffic_file=traffic*.tar        	
        tar xvf ${traffic_file}
}

use_traffic(){
        
	cd ${Dev_path}
        cd traffic
	demo/run-aws.sh setup
	demo/run-aws.sh createpkg
}

put_server(){
           
        cd ${Home_path}
        sudo scp -i /home/ubuntu/mnt/Public/Jess/demo-joewu@ubuntu.pem ${Home_path}/traffic.tgz ubuntu@34.247.164.77:/home/ubuntu	

}


init
remove_tar
cp_traffic
create_tar_file
use_traffic
put_server 
