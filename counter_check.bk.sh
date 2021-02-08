INF=$1
INF2=$2
interval=$3
RY=0
TY=0
RY2=0
TY2=0
[ "$interval" = "" ] && interval=1
run_check(){

        RX=`ifconfig $INF | grep "RX packets" | cut -d ":" -f2 | cut -d ' ' -f1`
        RY=$RX

        TX=`ifconfig $INF | grep "TX packets" | cut -d ":" -f2 | cut -d ' ' -f1`
        TY=$TX
        RX2=`ifconfig $INF2 | grep "RX packets" | cut -d ":" -f2 | cut -d ' ' -f1`
        RY2=$RX2
        TX2=`ifconfig $INF2 | grep "TX packets" | cut -d ":" -f2 | cut -d ' ' -f1`
        TY2=$TX2
        sleep $interval


	echo "===$INF===="
	RX=`ifconfig $INF | grep "RX packets" | cut -d ":" -f2 | cut -d ' ' -f1`
	echo "RX=$((RX-RY))"
	RY=$RX
	TX=`ifconfig $INF | grep "TX packets" | cut -d ":" -f2 | cut -d ' ' -f1`
	echo "TX=$((TX-TY))"
	TY=$TX
	
	echo "===$INF2===="
	RX2=`ifconfig $INF2 | grep "RX packets" | cut -d ":" -f2 | cut -d ' ' -f1`
        echo "RX=$((RX2-RY2))"
	RY2=$RX2
        TX2=`ifconfig $INF2 | grep "TX packets" | cut -d ":" -f2 | cut -d ' ' -f1`
        echo "TX=$((TX2-TY2))"
	TY2=$TX2	
}

while true
do
	clear
	run_check
	sleep 3
done
