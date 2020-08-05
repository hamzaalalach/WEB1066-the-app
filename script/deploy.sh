#!/usr/bin/env bash
set -e

docker login -u="$DOCKER_LOGIN" -p="$DOCKER_PASSWORD"
./gradlew -p ./monolithic/ui packageToContainer
docker tag zutherb/monolithic-shop:latest $DOCKER_LOGIN/web1066-theapp:latest
docker push $DOCKER_LOGIN/web1066-theapp:latest