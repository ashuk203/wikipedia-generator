#!/bin/bash

# Install dependencies
for (( TASK_ID = 0; TASK_ID < $NUM_TASKS; TASK_ID++ ))
do
    gcloud compute ssh $TASK_NAME-$TASK_ID --command \
        "source instance_files/setup.sh"
    echo "installed deps for instance $TASK_ID"
done
