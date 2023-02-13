#!/bin/bash

#We need to make sure whatever system runs this knows what command it is doing

# Update and Upgrade
sudo apt-get update -y #must put dash -y: we need to automate our response as there will be no one to say yes
sudo apt-get upgrade -y
# Install nginx
sudo apt-get install nginx -y
# Enable or start Nginx
sudo systemctl enable nginx -y

# Python version downlaod
sudo apt-get install python-software-properties

# download nodejs
curl -sL https://deb.nodesource.com/setup_12.x |sudo -E bash -
sudo apt-get install nodejs -y

sudo npm install pm2 -g
# Entering
# cd app/app

#install nodejs

# node app.js


