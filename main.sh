#!/bin/bash
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <IP_ADDRESS> <START_PORT> <END_PORT>"
    exit 1
fi

IP_ADDRESS=$1
START_PORT=$2
END_PORT=$3

if ! command -v nc &> /dev/null; then
    echo "Netcat (nc) is not installed. Please install it and try again."
    exit 1
fi

for ((port=START_PORT; port<=END_PORT; port++))
do
    nc -zv -w 1 $IP_ADDRESS $port &> /dev/null
    if [ $? -eq 0 ]; then
        echo "Port $port is open"
    else
        echo "Port $port is closed"
    fi
done
