#!/bin/sh
# Start the first process

nginx > /dev/null 2>&1 & 
/bin/sh /usr/bin/start_rest.sh > /dev/null 2>&1 &
gaiad start
