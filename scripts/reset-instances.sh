#!/bin/bash

for (( TASK_ID = 0; TASK_ID < $NUM_TASKS; TASK_ID++ ))
do
    gcloud compute instances reset $TASK_NAME-$TASK_ID 
done