#!/bin/bash
cd /home/ec2-user/elRed-cicd-app-deployment
sudo pkill -f flask
nohup python3 app.py > /dev/null 2>&1 &
