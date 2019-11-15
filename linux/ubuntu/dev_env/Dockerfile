ARG UBUNTU_VER=latest
FROM ubuntu:${UBUNTU_VER}

LABEL maintainer "jwduck (e_matthews1@126.com)"

ARG LINUX_NAME=ubuntu
ARG UBUNTU_VER
RUN echo ${LINUX_NAME} > image_version && echo ${UBUNTU_VER} >> image_version

RUN apt-get update -qq && \
    apt-get install -q -y \
        ca-certificates \
        clang-format-5.0 \
        cmake \
        curl \
        dos2unix \
        git \
        g++ \
        htop \
        jed \
        lcov \
        make \
        net-tools \
        ssh \
        subversion \
        time \
        unzip \
        valgrind \
        vim \
        wget \
        yasm \
        && \
    apt-get clean
