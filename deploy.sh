#!/bin/bash
cd /home/ubuntu/elRed-cicd-app-deployment
sudo pip3 install -r requirements.txt
sudo pkill -f flask
nohup python3 app.py > /dev/null 2>&1 &
