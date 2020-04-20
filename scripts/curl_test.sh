#!/usr/bin/env bash

# Verify the web app is serving requests

set -ev

# wait for web container
sleep 5

if curl -s http://web | grep -o "<title>Hello, Docker World!</title>" > /dev/null; then
  echo "web page loads"
else
  echo "web page failed to load"
  exit 1
fi

if curl -s http://web/api/hello | grep -o "Hello, Docker World!" > /dev/null; then
  echo "HTTP API request worked"
else
  echo "HTTP API request failed"
  exit 1
fi

exit 0
