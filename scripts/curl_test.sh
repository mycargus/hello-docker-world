#!/usr/bin/env bash

# Verify the web app is serving requests

set -e

# wait for web container
sleep 5

if curl -s http://web > /dev/null; then
  echo "curl Success"
  exit 0
else
  echo "curl Failure"
  exit 1
fi
