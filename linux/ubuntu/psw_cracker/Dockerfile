ARG UBUNTU_VER=latest
FROM ubuntu:${UBUNTU_VER}

LABEL maintainer "jwduck (e_matthews1@126.com)"

ARG LINUX_NAME=ubuntu
ARG UBUNTU_VER
RUN echo ${LINUX_NAME} > image_version && echo ${UBUNTU_VER} >> image_version

RUN apt-get update -qq && \
    apt-get install -q -y fcrackzip rarcrack && \
    apt-get clean


WORKDIR /work