#!/bin/bash

<<gcloud-cmd
    Google cloud instance commands
    e.g. 'reset', 'stop', 'delete', 'start'
gcloud-cmd
CMD=$1

for (( TASK_ID = 0; TASK_ID < $NUM_TASKS; TASK_ID++ ))
do
    gcloud compute instances $CMD --quiet $TASK_NAME-$TASK_ID &
done