#!/bin/sh

set -e
cd "$(dirname "$0")"
#git clone https://github.com/mahoor13/squid.conf.d.git
mv /etc/squid/squid.conf /etc/squid/squid`date +"%Y%m%d%H%M%S"`.conf
cp ./squid.conf /etc/squid/
rm -rf /etc/squid/squid.conf.d
mkdir /etc/squid/squid.conf.d
cp ./*.list /etc/squid/squid.conf.d/
cp ./adblock-updater.sh /etc/squid/squid.conf.d/
