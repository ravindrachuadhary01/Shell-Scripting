#!/bin/bash

<<< comment

This script will update system , 
install apache , 
enable apache to start on boot,
start service and deploy a sample html page.

comment

# update system
echo "Updating system..."
sudo apt update -y

# install apache
echo "Installing Apache..."
sudo apt install apache2 -y

# start apache service
echo "Starting Apache service..."
sudo systemctl start apache2

# enable apache to start on boot
 echo "Enabling Apache to start on boot..."   
 sudo systemctl enable apache2

# deploy sample html page
echo "Creating sample HTML page..."
echo "<html><h1> Welcome ,Ravindra singh !</h1></html>" | sudo tee /var/www/html/index.html  

echo "Apache setup completed successfully!"

