#!/bin/bash
# Build PHP provisioned with Ansible

DOCKER_IMAGE="aplyca/php"

echo "Building image"
docker build -t ${DOCKER_IMAGE} .

echo "Stopping and removing running db containers"
docker stop php && docker rm php

echo "Starting new db container"
docker run -d --name php -p 3306:3306 aplyca/php
