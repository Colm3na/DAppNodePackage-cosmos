#!/bin/sh
# Start the first process

mkdir -p /root/.gaiad/config
cp /genesis.json /root/.gaiad/config
cp /config.toml /root/.gaiad/config

nginx > /dev/null 2>&1 & 
gaiad start
