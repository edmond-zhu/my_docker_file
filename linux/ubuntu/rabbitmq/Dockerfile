ARG RABBITMQ_VER=latest
FROM rabbitmq:${RABBITMQ_VER}

LABEL maintainer "jwduck (e_matthews1@126.com)"

# generate image version for later checking when log-in
ARG RABBITMQ_VER
RUN echo ${RABBITMQ_VER} > /image_version

# install tools
RUN apt-get update -qq && \
    apt-get install -q -y \
        net-tools \
        && \
    apt-get clean

# Define environment variables.
ENV RMQ_USR admin
ENV RMQ_PSW psw

# copy launch script
ADD init.sh /init.sh

# default enable web ui plug-in
RUN echo [rabbitmq_management]. > /etc/rabbitmq/enabled_plugins

# expose ports
EXPOSE 15672
EXPOSE 5672

#ENTRYPOINT ufw allow 5672/tcp && ifconfig -a && rabbitmq-server start
# Define default command
CMD ["/init.sh"]
