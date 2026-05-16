#!/bin/bash

#  This script for we use to auto update linux system and install aws cli 

sudo apt update -y
sudo apt upgrade -y
sudo apt install awscli -y
aws --version   
 echo "AWS CLI has been installed and updated successfully."

 # this is install nginx web server
 sudo apt install nginx -y 
 sudo systemctl start nginx
 sudo systemctl enable nginx
 echo "Nginx web server has been installed and started successfully."

 # this is install mysql server
 sudo apt install mysql-server -y
 sudo systemctl start mysql
 sudo systemctl enable mysql
 echo "MySQL server has been installed and started successfully."

# this is install php
sudo apt install php-fpm php-mysql -y
sudo systemctl start php7.4-fpm
sudo systemctl enable php7.4-fpm
echo "PHP has been installed and started successfully."


