#!/bin/bash
while true; do
  cd /home/ubuntu/elRed-cicd-app-deployment
  python3 app.py & 
  wait $!
  break
done

