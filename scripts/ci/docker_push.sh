#!/usr/bin/env bash

# Build and push the docker image to docker hub registry

set -ev

docker build -t mycargus/hello_docker_world:latest .
docker tag mycargus/hello_docker_world:latest mycargus/hello_docker_world:master

echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push mycargus/hello_docker_world:latest
docker push mycargus/hello_docker_world:master
