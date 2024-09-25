#!/bin/bash

# Update package lists
sudo apt-get update

# Install Ruby
sudo apt-get install wget ruby-full -y

# Download CodeDeploy agent installer
cd /home/ubuntu
wget https://aws-codedeploy-ap-south-1.s3.ap-south-1.amazonaws.com/latest/install

# Make installer executable
chmod +x ./install

# Install CodeDeploy agent (automatic mode)
sudo ./install auto > /tmp/logfile

# Start CodeDeploy agent service
sudo service codedeploy-agent start

# --- Application Setup ---

# Install Python and pip (assuming Python 3)
sudo apt-get install -y python3 python3-pip python3-flask

# Make script executable (assuming it's named install_dependencies.sh)
chmod +x install_dependencies.sh
