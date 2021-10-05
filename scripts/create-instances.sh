#!/bin/bash

for (( TASK_ID = 6; TASK_ID < $NUM_TASKS; TASK_ID++ ))
do
    # echo $TASK_NAME-$TASK_ID
    gcloud compute instances create $TASK_NAME-$TASK_ID \
        --custom-cpu 1 --custom-memory 2 \
        --custom-extensions \
        --image-project=deeplearning-platform-release --image-family=tf2-2-4-cu110 \
        --scopes=cloud-platform &
done

