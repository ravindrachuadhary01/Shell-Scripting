!#/bin/bash
# this script will deploy a sample node js application on aws ec2 instance.

<<< comment
This script will update system ,
install apache ,
enable apache to start on boot,
start service and deploy a sample Node.js page.
Deploying a sample Node.js application on AWS EC2 instance involves several steps. Below is a sample script that performs these tasks. Please note that you need to have Node.js installed on your EC2 instance for this script to work.
configure security group to allow traffic on port 80 and 3000 (for Node.js app) before running this script.
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
# install Node.js
echo "Installing Node.js..."
curl -sL https://deb.nodesource.com/setup_14.x | sudo bash -
sudo apt install -y nodejs
# create a sample Node.js application
echo "Creating sample Node.js application..."
mkdir -p ~/myapp
cd ~/myapp
echo "const http = require('http');" > app.js
echo "const hostname = 'localhost';" >> app.js
echo "const port = 3000;" >> app.js
echo "const server = http.createServer((req, res) => {" >> app.js
echo "  res.statusCode = 200;" >> app.js
echo "  res.setHeader('Content-Type', 'text/plain');" >> app.js
echo "  res.end('Hello, World!');" >> app.js
echo "});" >> app.js
echo "server.listen(port, hostname, () => {" >> app.js
echo "  console.log(`Server running at http://${hostname}:${port}/`);" >> app.js
echo "});" >> app.js
# start the Node.js application
echo "Starting Node.js application..."
node app.js &
echo "Node.js application started successfully!"
