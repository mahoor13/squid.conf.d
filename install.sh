#!/bin/sh

set -e
cd "$(dirname "$0")"
#git clone https://github.com/mahoor13/squid.conf.d.git
if [ -f /etc/squid/squid.conf ]; then
    mv /etc/squid/squid.conf /etc/squid/squid`date +"%Y%m%d%H%M%S"`.conf
fi
cp ./squid.conf /etc/squid/
if [ ! -d /etc/squid/squid.conf.d ]; then
    mkdir /etc/squid/squid.conf.d
fi
cp -f ./*.list /etc/squid/squid.conf.d/
cp -f ./adblock-updater.sh /etc/squid/squid.conf.d/
service squid restart
