check process kafka with pidfile /home/easemob/apps/var/kafka/kafka.pid 
  start program "/data/apps/opt/kafka/bin/kafka-server-start.sh -daemon /data/apps/config/kafka/server.properties"  as uid "easemob" and gid "easemob"
  stop program "/data/apps/opt/kafka/bin/kafka-server-stop.sh" as uid "easemob" and gid "easemob"
  if failed host vip2-ali-hangzhou-kfkafka1 port 9092 type tcp then alert 
  if 5 restarts within 5 cycles then timeout
