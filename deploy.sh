#!/bin/bash

set -e  # Exit immediately on any non-zero return code

# User and Application Directory
USER="ubuntu"  # Replace with the actual user
APP_DIR="/home/$USER/elRed-cicd-app-deployment"  # Replace with the actual application directory

# Define application entry point
APP_ENTRY_POINT="app.py"

# Stop any existing Flask application instances
echo "Stopping any existing Flask applications..."
sudo pkill -f "flask run" -u $USER

# Start the Flask application in the background with error redirection
cd "$APP_DIR"
nohup sudo -u $USER python3 "$APP_ENTRY_POINT" > /dev/null 2>&1 &

echo "Flask application started in the background."
