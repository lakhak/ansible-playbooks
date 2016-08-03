#!/usr/bin/env bash

#docker run -it -v $PWD:/ansible 8689750be317 /bin/bash
docker run -v $PWD:/ansible 8689750be317 \
    ansible-playbook -i docker/inventory roles/java/test/main.yml