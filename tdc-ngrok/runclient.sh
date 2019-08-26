#!/bin/bash
set -xv
NGROK_BASE_DOMAIN="tunnel.trodc.site"
echo "server_addr: $NGROK_BASE_DOMAIN:4443" > config.txt
echo "trust_host_root_certs: false" >> config.txt
./ngrok/bin/ngrok -subdomain testing -config=./config.txt 80


