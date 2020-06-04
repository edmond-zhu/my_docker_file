ARG TF_VER=latest
FROM tensorflow/tensorflow:${TF_VER}

LABEL maintainer "jwduck (e_matthews1@126.com)"

ARG IMAGE_NAME=tensorflow
ARG TF_VER
RUN echo ${IMAGE_NAME} > image_version && echo ${TF_VER} >> image_version

# install some tools, which can be removed from final docker
RUN apt-get update -qq && \
    apt-get install -q -y \
        ca-certificates \
        curl \
        git \
        htop \
        jed \
        net-tools \
        protobuf-compiler \
        ssh \
        time \
        unzip \
        wget \
        && \
    apt-get clean

# install tools for modeling
RUN pip install Cython \
                contextlib2 \
                pillow \
                lxml \
                matplotlib	\
                numpy \
                scipy \
                tensorboard

WORKDIR /tf

# download protobuf 3.0 
#RUN wget -O protobuf.zip https://github.com/google/protobuf/releases/download/v3.0.0/protoc-3.0.0-linux-x86_64.zip && unzip protobuf.zip

# install COCO API
RUN git clone https://github.com/cocodataset/cocoapi.git && \
    cd cocoapi/PythonAPI && make
