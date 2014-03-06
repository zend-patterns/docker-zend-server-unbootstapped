#!/bin/bash

echo "deb http://repos.zend.com/zend-server/6.3/deb_ssl1.0 server non-free" >> /etc/apt/sources.list.d/zend-server.list

DEBIAN_FRONTEND=noninteractive apt-get install -y wget
wget -O - http://repos.zend.com/zend.key | apt-key add -