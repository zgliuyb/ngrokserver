#!/bin/bash
set -xv
NGROK_BASE_DOMAIN="tunnel.trodc.site"
echo -e "\n Deleting ceritfaces"
rm -rf ./ngrok/base.*
rm -rf ./ngrok/server.*
rm -rf ./ngrok/assets/client/tls/ngrokroot.crt

echo -e "\n Moving ceritfaces"
mv base.* ./ngrok
mv server.* ./ngrok
cp ./ngrok/base.pem ./ngrok/assets/client/tls/ngrokroot.crt
#
#echo -e "\n make ngrok server and client apps"
#cd ./ngrok
#sudo make clean
#sudo make release-server release-client
#sudo chmod +x ./bin/ngrokd
#sudo chmod +x ./bin/ngrok
