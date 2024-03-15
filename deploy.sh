#!/usr/bin/env bash
sudo apt udate && sudo apt install nodejs npm
sudo npm install -g pm2
pm2 stop simple_app
cd Simple-Application/SimpleApplication
npm install
pm2 start ./bin/www --name simple_app