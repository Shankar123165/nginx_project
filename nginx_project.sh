#!/bin/bash

echo "----- Nginx Setup Project Start -----"

# Update packages
sudo apt update

# Install nginx
sudo apt install nginx -y
echo "Nginx installed"

# Start nginx
sudo systemctl start nginx
sudo systemctl enable nginx
echo "Nginx started"

# Create custom web page
cat sudo tee /var/www/html/index.html

echo "Custom web page created"

# Check status
sudo systemctl status nginx | grep Active

# Get IP address
ip a | grep inet | grep -v 127.0.0.1

echo "----- Project Completed -----"
