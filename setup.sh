#!/bin/bash
source configs
apt install sshuttle -y
ssh-keygen -f "$HOME/.ssh/id_rsa" -q -N ""
ssh-copy-id -p $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST
./make
