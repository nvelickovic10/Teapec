#!/bin/bash

CURRENT_IP_ADDRESS=$(curl ipinfo.io/ip)

echo $PUBLIC_IP_ADDRESS $CURRENT_IP_ADDRESS
if [[ ${CURRENT_IP_ADDRESS} == ${PUBLIC_IP_ADDRESS} ]]; then
    echo "SAME"
else
    echo "DIFFERENT"
    export PUBLIC_IP_ADDRESS=${CURRENT_IP_ADDRESS}
fi
#END