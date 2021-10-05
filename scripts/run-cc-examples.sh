#!/bin/bash

# Generate tokenized examples
for (( TASK_ID = 0; TASK_ID < $NUM_TASKS; TASK_ID++ ))
do
    (gcloud compute ssh $TASK_NAME-$TASK_ID --command \
        "nohup bash instance_files/gen-cc-examples.sh $TASK_ID $NUM_TASKS $BUCKET >> main.log &"; \
    echo "Launched task on instance $TASK_ID") &
done
