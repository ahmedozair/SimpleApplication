#!/usr/bin/env bash
sudo apt udate && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop simple_app
cd SimpleApplication/
npm install
echo $PRIVATE_KEY > privatekey.pem
echo $SERVER > server.crt
pm2 start ./bin/www --name simple_app