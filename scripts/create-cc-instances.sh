#!/bin/bash
# use source command

NUM_TASKS=$1
TASK_NAME=wikisum-cc-refs

for TASK_ID in {0..$NUM_TASKS}
do
    gcloud compute instances create $TASK_NAME-$TASK_ID \
        --custom-cpu 1 --custom-memory 2 \
        --custom-extensions \
        --image-project=deeplearning-platform-release --image-family=tf2-2-4-cu110 \
        --scopes=cloud-platform
done

