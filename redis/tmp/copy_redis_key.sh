#!/bin/bash
# source http://stackoverflow.com/questions/23222616/copy-all-keys-from-one-db-to-another-in-redis
#set connection data accordingly
source_host=localhost
source_port=6379
source_db=0
source_password=test1234
target_host=localhost
target_port=6379
target_db=1
target_password=test1234

#copy all keys without preserving ttl!
redis-cli -h $source_host -p $source_port -a $source_password -n $source_db keys \* | while read key;
do
    echo "Copying $key"
    redis-cli --raw -h $source_host -p $source_port -a $target_password -n $source_db DUMP "$key" | head -c -1 | redis-cli -x -h $target_host -p $target_port -a $target_password -n $target_db RESTORE "$key" 0
done