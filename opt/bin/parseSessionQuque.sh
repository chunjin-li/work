#!/bin/sh

url=kefu-ali-hangzhou-kf1

#{tenantId}:{visitorUserId}
#kf:conn:inmessages:a:session:msg:to:create:%s:4806:25c343cf-e467-4ae7-8ca8-7b302e734ce6

#kf:conn:inmessages:a:session:to:create
#4806:25c343cf-e467-4ae7-8ca8-7b302e734ce6

#kf:conn:inmessages:a:token:list
#4806:25c343cf-e467-4ae7-8ca8-7b302e734ce6

echo "keys *:session:msg:to:create:%s*" | redis-cli -h $url | awk -v url="$url" '{if(index($1,"session")>0){print "redis-cli -h "url" lrange "$1" 0 -1"}}' | sh | jq -c '[.message.timestamp,.tenantId,.message.channel_id,.message.from,.visitorUser.userId]' | awk -F',' '{print strftime("%Y-%m-%dT%H:%M:%S",int(substr($1,2)/1000)),$2,$3,$4,substr($5,1,length($5)-1)}' | awk -F'"' '{print $1,$2,$4}'
