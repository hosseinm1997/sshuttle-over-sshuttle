# Sshuttle to another server

### Tested on Ubuntu 22

Run `git clone https://github.com/hosseinm1997/sshuttle-over-sshuttle.git`


Run `cd sshuttle-over-sshuttle`


Edit `configs` file by `vim configs`


Run setup file by `bash setup.sh`


Enter the remote server ssh password.


Start the service by `systemctl start sshuttle-tunnel.service`


Check the connectivity status by: `systemctl status sshuttle-tunnel.service`

It must print: `c : Connected to server.`


You can enable the service to start tunneling at startup by: `systemctl enable sshuttle-tunnel.service`


#### For connecting other VPN protocols via SSHUTTLE server
##### 1. Enable IP forwarding 
by editing `vim /etc/sysctl.conf` and seting `net.ipv4.ip_forward = 1`.

Then for apply changes run `sysctl -p`.

##### 2. Enable NAT
`iptables -t nat -A POSTROUTING -o MAIN_INTERFACE_NAME -j MASQUERADE`

You can find MAIN_INTERFACE_NAME by `ifconfig` command.

`apt-get -y install iptables-persistent`

`dpkg-reconfigure iptables-persistent`

For better performance restart the service at the certain intervals. You can run this command to add it to your crontab.

`echo -en '*/5 * * * * root bash -c "F=$(ifconfig | grep vpn | wc -l); (( F > 0 )) && systemctl restart sshuttle-tunnel.service > /dev/null 2>&1"\n' > /etc/cron.d/restart-sshuttle-service`
