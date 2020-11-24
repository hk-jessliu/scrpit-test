#!/bin/bash

set -x

init(){

      OPTION=`echo ${1}| tr '[A-Z]' '[a-z]'`

}

main(){

      case ${OPTION} in
   
	      a*) echo "a"
		    ;;
	      b*) echo "b"
                    ;;

      esac

}

init ${@}
main
