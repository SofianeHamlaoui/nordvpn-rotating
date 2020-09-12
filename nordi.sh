while true
do
	echo "Activating NordVPN....."
	echo ""
	country="$(shuf -n 1 -e France Belgium Spain Italy Germany Netherlands Switzerland)"
	echo "Going with $country this time :D"
	echo ""
	nordvpn connect $country
	megasync &
	sleep 300
	echo "5 mins..."
	sleep 300
	echo "10 mins..."
	sleep 300
	echo "15 mins..."
	sleep 300
	echo "20 mins..."
	echo "Killing Mega"
	sleep 1
	killall megasync
done
