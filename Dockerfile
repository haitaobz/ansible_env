FROM example-ansible-node:latest

RUN apk add --no-cache ansible openssh sshpass

RUN mkdir -p /etc/ansible && \
    ssh-keygen -t rsa -P "" -f ~/.ssh/id_rsa
