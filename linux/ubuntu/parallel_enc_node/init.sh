#!/bin/sh

mkdir $WORK_PATH/bins
mkdir $WORK_PATH/results
mkdir $WORK_PATH/segments
cp /aom/build/linux/aomenc $WORK_PATH/bins/aomenc_parallel_enc
cp /usr/bin/mkvmerge $WORK_PATH/bins/
cd $WORK_PATH/celery_proj
celery -A VidEncTasks worker -l info -Ofair
