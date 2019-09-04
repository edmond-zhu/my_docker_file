FROM ubuntu:18.04

LABEL maintainer "jwduck (e_matthews1@126.com)"

ARG BRANCH_OR_TAG=master
RUN env
RUN apt-get update && \
    apt-get install -q -y git cmake make g++ yasm clang-format-5.0
RUN apt-get clean