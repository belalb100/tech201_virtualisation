#!/bin/bash

#We need to make sure whatever system runs this knows what command it is doing

# Update and Upgrade
sudo apt-get update -y #must put dash -y: we need to automate our response as there will be no one to say yes

sudo apt-get upgrade -y

# Install nginx
sudo apt-get install nginx -y

# Enable or start Nginx
sudo systemctl enable nginx -y
