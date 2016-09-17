#!/usr/bin/env bash

docker build docker/ -t ansible_base
docker rm -f ansible-tests
docker run --name ansible-tests -v $PWD:/ansible ansible_base \
    ansible-playbook -i docker/inventory roles/java/test/main.yml
