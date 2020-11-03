#!/bin/bash
clear
apt install toilet
# install nginx
apt install nginx-core  
apt install nginx-extras
apt install nginx-full  
apt install nginx-light
cp nginx.conf /etc/nginx

# enable
ufw enable
ufw allow in "Nginx HTTPS"
ufw allow in "Nginx HTTP"
ufw allow in "Nginx Full"
ufw allow in "OpenSSH"
# solve : Failed to start A high performance web server and a reverse proxy server
rm /etc/nginx/sites-enabled/default
systemctl restart nginx.service

# success
clear
toilet success
echo "========================================="
systemctl status nginx
