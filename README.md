# Sshuttle to another server

Run `git clone https://github.com/hosseinm1997/sshuttle-over-sshuttle.git`


Run `cd sshuttle-over-sshuttle`


Edit `configs` file by `vim configs`


Run setup file by `bash setup.sh`


Enter the remote server ssh password.


Start the service by `systemctl start sshuttle-tunnel.service`


Check the connectivity status by: `systemctl status sshuttle-tunnel.service`

It must be something like: `c : Connected to server.`


You can enable the service to start tunneling at startup by: `systemctl enable sshuttle-tunnel.service`
