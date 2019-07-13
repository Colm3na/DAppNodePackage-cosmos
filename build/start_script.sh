#!/bin/sh
# Start the first process

mkdir -p /root/.gaiad/config

if [ ! -f "/root/.gaiad/config/genesis.json" ]
then
  cp /usr/src/app/genesis.json /root/.gaiad/config/genesis.json
fi

if [ ! -f "/root/.gaiad/config/config.toml" ]
then
  cp /usr/src/app/config.toml /root/.gaiad/config/config.toml
fi

cp /usr/src/app/*.pem /etc/nginx/certs

nginx > /dev/null 2>&1 & 

/bin/sh /usr/bin/start_rest.sh > /dev/null 2>&1 &

gaiad start
