#!/bin/sh

#curl --request POST \
#  --url https://a1.easemob.com/sipsoft/sandbox/messages \
#  --header 'accept: application/json' \
#  --header 'authorization: Bearer YWMtnFAvUm2hEeWc6SeVUEWZzgAAAVF71uBBw0zOjaRBLAEh5YPaxc6xHRLDmrw' \
#  --header 'cache-control: no-cache' \
#  --header 'content-type: application/json' \
#  --header 'postman-token: e1222bb1-69fe-0b29-1ec7-a694140fe646' \
#  --data '{ "target_type":"users",\n    "target":["105973"],\n    "msg":{\n        "type":"txt",\n        "msg":"现在已经可以33了" \n        },\n    "from":"004"\n}'


for (( i=0; i<100;i++ )) ; do
curl -X POST -H "accept: application/json" -H "authorization: Bearer YWMtnFAvUm2hEeWc6SeVUEWZzgAAAVF71uBBw0zOjaRBLAEh5YPaxc6xHRLDmrw" -H "cche-control: no-cache" -H "content-type: application/json" "https://a1.easemob.com/sipsoft/sandbox/messages" -d '{"target_type":"users","target":["105973"],"msg":{"type":"txt","msg":"aaaaa"},"from":"'$1'-'$i'"}'

done
