#!/bin/sh
# osx nfs settings
sudo -s
echo "nfs.server.mount.require_resv_port = 0" >> /etc/nfs.conf
touch /etc/exports
echo "/Users -mapall=501:20" >> /etc/exports
nfsd enable
nfsd restart
exit
