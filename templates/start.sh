#!/bin/bash
chown -R bind:bind /etc/bind/zones/slave
chmod 700 /etc/bind/zones/slave
chown bind /var/run/named
chmod 775 /var/cache/bind
chown :bind /var/cache/bind
/usr/sbin/named -g -u bind
