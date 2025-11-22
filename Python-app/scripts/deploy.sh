#!/bin/bash

# Find the latest deployment-archive folder
DEPLOY_DIR=$(ls -d /opt/codedeploy-agent/deployment-root/*/*/deployment-archive | head -1)

# Copy hello.py to /tmp
cp "$DEPLOY_DIR/src/hello.py" /tmp/