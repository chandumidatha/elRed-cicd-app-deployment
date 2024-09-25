#!/bin/bash
cd /home/ubuntu/elRed-cicd-app-deployment
# Stop existing Flask app
sudo pkill -f gunicorn

# Start the app with Gunicorn
nohup gunicorn --bind 0.0.0.0:5000 app:app > /dev/null 2>&1 &

