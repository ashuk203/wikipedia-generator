TASK_ID=$1
NUM_TASKS=$2
BUCKET=$3

python3 instance_files/get_references_commoncrawl.py --num_tasks=$NUM_TASKS --out_dir=$BUCKET/wiki_references \
    --task_id $TASK_ID \
    > proc_logs/logs-$TASK_ID.txt 2>&1; \ 
    

gsutil cp proc_logs/logs-$TASK_ID.txt $BUCKET/logs; \

# Shut down instance after task completes
python3 instance_files/delete_self.py