#!/bin/bash
source configs
apt install sshuttle -y
ssh-keygen -f "$HOME/.ssh/id_rsa" -q -N ""
echo "Copying the key to $REMOTE_USER@$REMOTE_HOST $REMOTE_PORT"
ssh-copy-id -f -p $REMOTE_PORT $REMOTE_USER@$REMOTE_HOST
./make
cp sshuttle-tunnel.service /etc/systemd/system/
