#!/bin/bash
source configs
echo "sshuttle --dns -r $REMOTE_USER@$REMOTE_HOST:$REMOTE_PORT 0.0.0.0/0" > /usr/sbin/sshuttle-tunnel.sh
