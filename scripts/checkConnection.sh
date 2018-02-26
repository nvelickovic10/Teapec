#!/bin/bash

cd "$(dirname "$0")"

PUBLIC_IP_ADDRESS_FILE=./PUBLIC_IP_ADDRESS

CURRENT_IP_ADDRESS=$(curl -s ipinfo.io/ip)
PUBLIC_IP_ADDRESS=$(cat ${PUBLIC_IP_ADDRESS_FILE})

function logInfo {
    echo "INFO: $1"
}

echo $PUBLIC_IP_ADDRESS $CURRENT_IP_ADDRESS
if [[ ${CURRENT_IP_ADDRESS} == ${PUBLIC_IP_ADDRESS} ]]; then
    logInfo "IP address did not change"
else
    logInfo "IP address changed!!"
    echo ${CURRENT_IP_ADDRESS} >> ${PUBLIC_IP_ADDRESS_FILE}
fi
#END