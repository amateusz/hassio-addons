#!/bin/bash

term_handler(){
    echo "Stopping..."
    exit 0
}

# Setup signal handlers
trap 'term_handler' SIGTERM

echo "Starting..."

INTERFACES_AVAILABLE="$(ifconfig -a | grep wl | cut -d ' ' -f '1')"

echo >&2 "Avaliable interfaces: ${INTERFACES_AVAILABLE}"

while true; do 
    echo "Interface stats:"
    ifconfig
    sleep 3600
done
