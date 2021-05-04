for value in SERVER PORT
do
	if ! printenv $value
	then
		echo "env value '$value' not found"
		exit 1
	fi
done

cat nginx.conf.base | sed "s/SERVER/$SERVER/g" | sed "s/PORT/$PORT/g" > nginx.conf

nginx -g "daemon off;"
