TASK_ID=$1
NUM_TASKS=$2
BUCKET=$3

python3 instance_files/produce_examples.py --out_dir=$BUCKET/data --refs_dir=$BUCKET/wiki_references \
    --num_tasks=$NUM_TASKS --for_commoncrawl --task_id $TASK_ID \
    > proc_logs/ex-gen-$TASK_ID.txt 2>&1; \ 
    

gsutil cp proc_logs/ex-gen-$TASK_ID.txt $BUCKET/logs; \

# Shut down instance after task completes
sudo poweroff