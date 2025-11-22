#!/bin/bash
set -e

# Pick the instance folder
INSTANCE_DIR=$(ls -d /opt/codedeploy-agent/deployment-root/*-*-*-*-* 2>/dev/null | head -1)

# Pick the latest deployment
LATEST_DEPLOY=$(ls -td $INSTANCE_DIR/d-* 2>/dev/null | head -1)

# Full path to src folder
SRC_DIR="$LATEST_DEPLOY/deployment-archive/src"

# Debug logs (VERY IMPORTANT for future)
echo "Instance dir: $INSTANCE_DIR"
echo "Latest deployment: $LATEST_DEPLOY"
echo "Source dir: $SRC_DIR"

# Copy file
cp "$SRC_DIR/hello.py" /tmp/hello.py

echo "Copied hello.py to /tmp successfully"
