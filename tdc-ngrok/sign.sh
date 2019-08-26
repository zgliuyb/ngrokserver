#!/bin/bash
set -xv
NGROK_BASE_DOMAIN="tunnel.trodc.site"
openssl genrsa -out base.key 2048
openssl req -new -x509 -nodes -key base.key -days 10000 -subj "/CN=${NGROK_BASE_DOMAIN}" -out base.pem
openssl genrsa -out server.key 2048
openssl req -new -key server.key -subj "/CN=${NGROK_BASE_DOMAIN}" -out server.csr
openssl x509 -req -in server.csr -CA base.pem -CAkey base.key -CAcreateserial -days 10000 -out server.crt

#echo -e "\n Deleting ceritfaces"
#rm -rf ./ngrok/base.*
#rm -rf ./ngrok/server.*
#rm -rf ./ngrok/assets/client/tls/ngrokroot.crt
#
#echo -e "\n Moving ceritfaces"
#mv base.* ./ngrok
#mv server.* ./ngrok
#cp ./ngrok/base.pem assets/client/tls/ngrokroot.crt
#
#echo -e "\n make ngrok server and client apps"
#cd ./ngrok
#sudo make clean
#sudo make release-server release-client
#sudo chmod +x ./bin/ngrokd
#sudo chmod +x ./bin/ngrok
