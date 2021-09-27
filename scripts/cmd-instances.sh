#!/bin/bash

# E.g. 'reset', 'stop', 'delete'
CMD=$1

for (( TASK_ID = 0; TASK_ID < $NUM_TASKS; TASK_ID++ ))
do
    gcloud compute instances $CMD $TASK_NAME-$TASK_ID &
done