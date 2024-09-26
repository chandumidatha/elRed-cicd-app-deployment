#!/bin/bash
cd /home/ubuntu/elRed-cicd-app-deployment
sudo pkill -f flask
nohup python3 app.py > /dev/null 2>&1 &
