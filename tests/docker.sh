#!/bin/bash
# test PHP provisiones with Ansible

ANSIBLE_ROLE="aplyca.PHP"
DOCKER_IMAGE="ansible/ubuntu14.04-ansible"

docker run -it --name test-php -v `pwd`:/tmp/${ANSIBLE_ROLE} ${DOCKER_IMAGE} /tmp/${ANSIBLE_ROLE}/tests/tests.sh
docker stop test-php && docker rm test-php
