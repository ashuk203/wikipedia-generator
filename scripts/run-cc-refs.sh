#!/bin/bash

<<runtimes
    Last run started at around 3:29 pm on Sept. 27, 2021.
    Each instance has to go through 9000 files
runtimes


# Extract data from reference urls through CommonCrawl
for (( TASK_ID = 0; TASK_ID < $NUM_TASKS; TASK_ID++ ))
do
    gcloud compute ssh $TASK_NAME-$TASK_ID --command \
        "nohup bash instance_files/extract-cc-refs.sh $TASK_ID $NUM_TASKS $BUCKET >> main.log &"
    echo "Launched task on instance $TASK_ID"
done
