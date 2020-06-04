ARG PYTHON_VER=latest
FROM python:${PYTHON_VER}

LABEL maintainer "jwduck (e_matthews1@126.com)"

ARG IMAGE_NAME=python
ARG PYTHON_VER
RUN echo ${IMAGE_NAME} > image_version && echo ${PYTHON_VER} >> image_version

RUN apt-get update -qq && \
    apt-get install -q -y \
        ca-certificates \
        clang-format \
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

RUN pip3 install cpp-coveralls
