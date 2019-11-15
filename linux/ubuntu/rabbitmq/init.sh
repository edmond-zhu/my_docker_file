#!/bin/sh

# Create Rabbitmq user
( sleep 5 ; \
rabbitmqctl add_user $RMQ_USR $RMQ_PSW 2>/dev/null ; \
rabbitmqctl set_user_tags $RMQ_USR administrator ; \
rabbitmqctl set_permissions -p / $RMQ_USR  ".*" ".*" ".*" ; \
ifconfig -a ; \
echo "*** User '$RMQ_USR' with password '$RMQ_PSW' completed. ***" ; \
echo "*** Log in the WebUI at port 15672 (example: http://localhost:15672) ***") &

# $@ is used to pass arguments to the rabbitmq-server command.
# For example if you use it like this: docker run -d rabbitmq arg1 arg2,
# it will be as you run in the container rabbitmq-server arg1 arg2
rabbitmq-server $@