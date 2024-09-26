#!/bin/bash
cd /home/ec2-user/elRed-cicd-app-deployment
sudo pkill -f python3
nohup python3 app.py > /dev/null 2>&1 &
