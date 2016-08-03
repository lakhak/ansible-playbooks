FROM ubuntu:16.10

VOLUME /ansible

WORKDIR /ansible

RUN apt-get -y update && \
    apt-get -y install ansible

CMD [ "ansible-playbook", "--version" ]