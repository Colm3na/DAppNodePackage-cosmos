#!/bin/sh
# Start the first process

mkdir -p /root/.gaiad/config
cp /genesis.json /root/.gaiad/config
cp /config.toml /root/.gaiad/config

nohup /usr/bin/gaiad start &
nginx

#tmux new-session -s "gaiad" -d -n "main"
#tmux send-keys -t "gaiad:main" C-z 'gaiad start' Enter
#tmux split-window -v
#tmux select-pane -t 1
#tmux send-keys "cd /usr/src/app/lunie && npm run serve" C-m
