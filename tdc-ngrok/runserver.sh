#!/bin/bash
set -xv
NGROK_BASE_DOMAIN="tunnel.trodc.site"
cd ngrok
./bin/ngrokd -tlsKey=server.key -tlsCrt=server.crt -domain="${NGROK_BASE_DOMAIN}" -httpAddr=":8080" -httpsAddr=":8081"
