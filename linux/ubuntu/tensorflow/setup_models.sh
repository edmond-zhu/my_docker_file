#!/bin/sh

# check tensorflow root directory
if [ ! -d ${TF_DIR} ]; then
    TF_DIR=/tf
fi

MODELS_DIR=${TF_DIR}/models

# check for tensorflow models, clone from GitHub if not exist
if [ ! -d ${MODELS_DIR} ]; then
    git clone --depth 1 https://github.com/tensorflow/models.git MODELS_DIR
fi

# copy coco api bins to models directory
cp -r /tf/cocoapi/PythonAPI/pycocotools ${MODELS_DIR}/research/

# add to python environment
export PYTHONPATH=${PYTHONPATH}:${MODELS_DIR}/research:${MODELS_DIR}/research/slim
