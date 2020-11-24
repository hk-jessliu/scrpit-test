#!/bin/bash

set -x
#set -e

init(){
       
	soure_path=/mnt/Engineering/Project_Management/General/TechnicalData/TestCaseDocument/TestPlan/Link_Abstraction/images
        my_path=/mnt/Public/Jess/image/traffic-image

}

move_image(){
                       
        sudo mv ${my_path}/image.bin.e2900*.LA ${my_path}/2900old 
        sudo mv ${my_path}/image.bin.e6000*.LA ${my_path}/6000old 	
	
	if [ -f "${my_path}"/image*.LA ];then
	   
		echo "mv old image fail"
        else 
            
		echo "mv old image finish"		    
    
        fi


	sudo cp ${soure_path}/image*.LA ${my_path} 
   
       	if [ -f "${my_path}"/image.bin.e2900*.LA ];then
	  
	        echo "2900 image update ok"
        
        fi
     
        if [ -f "${my_path}"/image.bin.e6000*.LA ];then
	  
	      	echo "6000 image update ok"
	fi

}

check_image(){

	before=$(date -d '3 days ago' "+%m%d")
        before1=$(date -d '1 days ago' "+%m%d")
	
        image_file1=${soure_path}/image.bin.e2900.ewn.${before}"10".id-*.LA
        image_file2=${soure_path}/image.bin.e2900.ewn.${before1}"10".id-*.LA
        image_file3=${soure_path}/image.bin.e6000.ewn.${before}"10".id-*.LA
        image_file4=${soure_path}/image.bin.e6000.ewn.${before1}"10".id-*.LA
	
	
	if [ -f "${soure_path}"/image.bin.e2900.ewn.${before}"10".id-*.LA ];then

      		sudo mv ${soure_path}/image.bin.e2900.ewn.${before}"10".id-*.LA ${soure_path}/old && echo "mv old 2900image finish"

		sudo mv ${soure_path}/image.bin.e6000.ewn.${before}"10".id-*.LA ${soure_path}/old && echo "mv old 6000image finish"
	fi

	if [ -f "${soure_path}"/image.bin.e2900.ewn.${before1}"10".id-*.LA ];then


		sudo mv ${soure_path}/image.bin.e2900.ewn.${before1}"10".id-*.LA ${soure_path}/old && echo "mv old 2900image finish"

		sudo mv ${soure_path}/image.bin.e6000.ewn.${before1}"10".id-*.LA ${soure_path}/old && echo "mv old 6000image finish"
	fi


}


init
check_image
move_image
