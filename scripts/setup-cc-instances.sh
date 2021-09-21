#!/bin/bash

for TASK_ID in {0..$NUM_TASKS}
do
    gcloud compute scp --recurse ./instance_files/ $TASK_NAME-$TASK_ID:~/
done

for TASK_ID in {0..$NUM_TASKS}
do
    gcloud compute ssh $TASK_NAME-$TASK_ID --command \
        "source instance_files/setup.sh $TASK_ID $NUM_TASKS $BUCKET"
    echo "installed deps for instance $TASK_ID"
done
