#!/bin/sh

echo "ZBX_SVR_IP: ${ZBX_SVR_IP}"
echo "ZBX_SVR_PORT: ${ZBX_SVR_PORT}"
echo "ZBX_HOSTNAME: ${ZBX_HOSTNAME}"
printf 'Server=${ZBX_SVR_IP}\nHostname=${ZBX_HOSTNAME}\nListenPort=${ZBX_HOSTNAME}\n' > /etc/zabbix/zabbix_agentd.conf

service zabbix-agent restart
