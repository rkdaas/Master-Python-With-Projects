#!/bin/bash

# Find the latest deployment-archive folder
 DEPLOY_DIR=$(ls -d /opt/codedeploy-agent/deployment-root/*-*-*-*-* 2>/dev/null | head -1)
 cd "$DEPLOY_DIR"
 DEPLOYMENT_ID=$(ls -td d-* 2>/dev/null | head -1)
 cd "$DEPLOYMENT_ID"/deployment-archive/src/
 cp hello.py /tmp/hello.py
 

