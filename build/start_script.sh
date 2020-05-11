#!/bin/sh
# Start the first process

# Download genesis file one time
if [ ! -f $HOME/.gaiad/config/genesis.json ]; then 
    curl https://raw.githubusercontent.com/cosmos/launch/master/genesis.json > $HOME/.gaiad/config/genesis.json
fi

# Start the web server
nginx > /dev/null 2>&1 & 

# Configure rpc
gaiacli config node localhost:26657 &

# Start the rest server
/bin/sh /usr/bin/start_rest.sh > /dev/null 2>&1 &

# Start the tendermint node
gaiad start --pruning=everything
