#!/bin/bash

# Include common functions
. common.sh

logInfo "STARTED updateServerAddress.sh"

PUBLIC_IP_ADDRESS_FILE=./PUBLIC_IP_ADDRESS
PUBLIC_IP_ADDRESS=$(cat ${PUBLIC_IP_ADDRESS_FILE})

sed -i -e 's#$PUBLIC_IP_ADDRESS#'"${PUBLIC_IP_ADDRESS}"'#g' ../pages/index.js

logInfo "FINISHED updateServerAddress.sh"
#END