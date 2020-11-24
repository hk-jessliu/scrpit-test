#!/bin/bash 

COUNT=${1:-23}
SPEED=8

if [ "$2" != "net" ]; then
        SERVERIP=192.168.1
        CLIENTIP=192.168.4
else
        SERVERIP=192.168.4
        CLIENTIP=192.168.1
fi

echo "$COUNT"
echo "$SERVERIP"

SERVER_REG_RESULT="FAIL"
CLIENT_REG_RESULT="FAIL"

sipp "$SERVERIP".1 -i "$SERVERIP".150 -inf uscall.csv -sf uac_register.xml -r $SPEED -rp 500 -m $COUNT -p 5555 -recv_timeout 2000
