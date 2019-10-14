FROM ubuntu:18.04

LABEL maintainer "jwduck (e_matthews1@126.com)"

ARG BRANCH_OR_TAG=master

# environment variables
ENV APP_USER=cidana \
	APP_DIR=/opt/app \
    LC_ALL=C.UTF-8 \
	LANG=C.UTF-8 \
	LANGUAGE=C.UTF-8

# add runtime user
RUN groupadd --gid 1000 ${APP_USER} && \
	useradd --uid 1000 --gid ${APP_USER} --shell /bin/bash --create-home ${APP_USER}

# install tools and clean-up
RUN apt-get update && \
    apt-get install -q -y git wget net-tools curl vim python-pip ffmpeg
RUN apt-get clean

#install celery
RUN pip install virtualenv
RUN mkdir celery && virtualenv celery
RUN pip install celery
