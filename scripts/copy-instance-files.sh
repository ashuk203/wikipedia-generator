#!/bin/bash

# Copy instance_files/ to each gcloud VM
for (( TASK_ID = 0; TASK_ID < $NUM_TASKS; TASK_ID++ ))
do
    (gcloud compute scp --recurse ./instance_files/ $TASK_NAME-$TASK_ID:~/; \
        echo "Copied files for instance $TASK_ID") &
done