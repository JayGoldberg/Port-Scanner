#!/bin/sh

if [ $# -ne 3 ]; then
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

timeout () {
    local timeout_secs=${1:-10}
    shift

    [ ! -z "${timeout_secs//[0-9]}" ] && { return 65; }
    
    # subshell
    ( 
        "$@" &
        child=$!
        #trap - '' SIGTERM #why would we need this?
        (       
                sleep $timeout_secs
                kill $child 2> /dev/null # TODO returns 143 instead of "real" timeout's 124
        ) &
        wait $child
    )
}

for port in `seq $START_PORT $END_PORT`; do
    timeout 1 nc $IP_ADDRESS $port #&> /dev/null
    if [ $? -eq 0 ]; then
        echo "${IP_ADDRESS}:${port} is open"
    else
        echo "${IP_ADDRESS}:${port} is closed"
    fi
done
