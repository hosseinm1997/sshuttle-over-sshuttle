#!/bin/bash
source configs
echo "make executable file at /usr/sbin/sshuttle-tunnel.sh"
echo -en "#!/bin/bash\nshuttle --dns -r $REMOTE_USER@$REMOTE_HOST:$REMOTE_PORT 0.0.0.0/0" > /usr/sbin/sshuttle-tunnel.sh
