#ENTRYPOINT ufw allow 5672/tcp && ifconfig -a && rabbitmq-server start
FROM rabbitmq

LABEL maintainer "jwduck (e_matthews1@126.com)"

# Define environment variables.
ENV RABBITMQ_USER tester
ENV RABBITMQ_PASSWORD psw

ADD init.sh /init.sh

# expose ports
EXPOSE 15672
EXPOSE 5672

# Define default command
CMD ["/init.sh"]
