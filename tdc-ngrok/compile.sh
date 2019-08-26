#!/bin/bash
set -xv
NGROK_BASE_DOMAIN="tunnel.trodc.site"

echo -e "\n make ngrok server and client apps"
cd ./ngrok
#make clean
make release-server release-client
chmod +x ./bin/ngrokd
chmod +x ./bin/ngrok
