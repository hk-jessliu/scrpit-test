#!/bin/bash
# cat /sys/class/net/eth0/statistics/rx_bytes
# cat /sys/class/net/eth0/statistics/rx_packets

# cat /sys/class/net/eth0/statistics/tx_packets
# cat /sys/class/net/eth0/statistics/tx_bytes


INF=${1}
INF1=${2}
RY=0
TY=0
RY1=0
TY1=0

init(){

RX=`cat /sys/class/net/${INF}/statistics/rx_packets`
RY=$RX
TX=`cat /sys/class/net/${INF}/statistics/tx_packets`
TY=$TX

RX1=`cat /sys/class/net/${INF1}/statistics/rx_packets`
RY1=$RX1
TX1=`cat /sys/class/net/${INF1}/statistics/tx_packets`
TY1=$TX1

sleep 1

echo "===$INF===="
RX=`cat /sys/class/net/${INF}/statistics/rx_packets`
echo "Rx_packet=$((RX-RY))"
RY=$RX
TX=`cat /sys/class/net/${INF}/statistics/tx_packets`
echo "Tx_packet=$((TX-TY))"
TY=$TX

echo "===$INF1=="
RX1=`cat /sys/class/net/${INF1}/statistics/rx_packets`
echo "Rx1_packet=$((RX1-RY1))"
RY1=$RX1
TX1=`cat /sys/class/net/${INF1}/statistics/tx_packets`
echo "Tx1_packet=$((TX1-TY1))"
TY1=$TX1


}

while true
do
	clear
	init
	sleep 3
done
