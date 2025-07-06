#!/bin/bash

# Update packages
sudo apt update -y

# Install Nginx
sudo apt install nginx -y

# Allow HTTP/SSH in firewall
sudo ufw allow 'Nginx HTTP'
sudo ufw allow 'OpenSSH'
sudo ufw --force enable  # Enable firewall

# Deploy a static HTML page
echo "<html><body><h1>Hello dear,This is Mayokun-DevOps Nginx-Server automated Setup!</h1></body></html>" | sudo tee /var/www/html/index.html

# Restart Nginx
sudo systemctl restart nginx
