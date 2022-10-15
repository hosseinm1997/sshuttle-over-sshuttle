#!/bin/bash
source configs
echo "make executable file at /usr/sbin/sshuttle-tunnel.sh"
echo -en "#!/bin/bash\nsshuttle --dns --auto-hosts -r $REMOTE_USER@$REMOTE_HOST:$REMOTE_PORT --listen $LISTEN_IP --ns-hosts=1.1.1.1,8.8.8.8 0/0" > /usr/sbin/sshuttle-tunnel.sh
