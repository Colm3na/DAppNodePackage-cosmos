#/bin/sh
sleep 30
nohup gaiacli rest-server --trust-node --laddr tcp://0.0.0.0:1317 --node=tcp://localhost:9443 > /usr/src/app/rest.out 2>&1
