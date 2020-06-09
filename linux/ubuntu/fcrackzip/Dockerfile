ARG UBUNTU_VER=latest

# build environment
FROM ubuntu:${UBUNTU_VER} AS build
WORKDIR /home

LABEL maintainer "jwduck (e_matthews1@126.com)"

# setup basic linux os version
ARG LINUX_NAME=ubuntu
ARG UBUNTU_VER
RUN echo ${LINUX_NAME} > /image_version && echo ${UBUNTU_VER} >> /image_version

# setup timezone
ENV LC_ALL=C.UTF-8 \
	LANG=C.UTF-8 \
	LANGUAGE=C.UTF-8 \
    TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# install build tools
RUN DEBIAN_FRONTEND=noninteractive apt-get update && \
    apt-get install -y -q --no-install-recommends \
        autoconf \
        build-essential \
        ca-certificates \
        git \
        libtool \
        libzip-dev\
        make \
        pkg-config \
        zip \
        && \
    apt-get clean

# get fcrackzip from github
ARG FCRACKZIP_REPO=https://github.com/edmond-zhu/fcrackzip.git
RUN git clone --depth 1 ${FCRACKZIP_REPO} && \
    cd fcrackzip && \
    LIBS=-lzip ./configure && \
    make -j8 && \
    make install DESTDIR=/home/build && \
    make install

# create test file
RUN zip -P 123 /home/build/test.zip /image_version

# runtime environment
FROM ubuntu:${UBUNTU_VER}
WORKDIR /work

# Prerequisites
ENV LC_ALL=C.UTF-8 \
	LANG=C.UTF-8 \
	LANGUAGE=C.UTF-8 \
    TZ=UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN DEBIAN_FRONTEND=noninteractive apt-get update && apt-get install -y -q --no-install-recommends libzip-dev && \
    rm -rf /var/lib/apt/lists/*

# Install app
COPY --from=build /home/build /
ENV LD_LIBRARY_PATH=${LD_LIBRARY_PATH}:/usr/local/lib:/usr/local/lib/x86_64-linux-gnu

# default ENV
ENV ENCRYPT_LEN=1-6 \
    KEY_PATTERN=Aa1! \
    KEY_POSITION=A \
    ZIP_FILE=/test.zip\
    LOG_FILE=log.txt

# entrypoint
CMD fcrackzip -b -v -u -l${ENCRYPT_LEN} -c${KEY_PATTERN} -p${KEY_POSITION} ${ZIP_FILE} > ${LOG_FILE} && \
    cat ${LOG_FILE}
