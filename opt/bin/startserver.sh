#!/bin/sh

nginxsz=`ps -ef | grep nginx | grep master | grep -v grep | wc -l`
if [ $nginxsz -eq 0 ]; then
    echo "start nginx, defualt port 80"
    sudo nginx
    sleep 1
fi

casssz=`ps -ef | grep CassandraDaemon | grep -v grep | wc -l`
if [ $casssz -eq 0 ]; then
    echo "start cassandra,default port 9160"
    cassandra 1>/work/cassandra.log 2>&1
    sleep 1
fi

redissz=`ps -ef | grep redis-server | grep -v grep | wc -l`
if [ $redissz -eq 0 ]; then
    echo "start redis,default port 6379"
    redis-server /usr/local/etc/redis.conf
    sleep 1
fi

zksz=`ps -ef | grep zookeeper | grep -v grep | wc -l`
if [ $zksz -eq 0 ]; then
    echo "start zookeeper,default port 2181"
    zookeeper-server-start.sh -daemon /usr/local/Cellar/kafka/0.8.1.1/libexec/config/zookeeper.properties
    sleep 3
fi

kafkasz=`ps -ef | grep "kafka\.Kafka" | grep -v grep | wc -l`
if [ $kafkasz -eq 0 ]; then
    echo "start kafka,default port 9092"
    kafka-server-start.sh -daemon /usr/local/Cellar/kafka/0.8.1.1/libexec/config/server.properties
    sleep 3
fi

tomcatsz=`ps -ef | grep tomcat | grep -v grep | wc -l`
if [ $tomcatsz -eq 0 ]; then
    echo "start tomcat,default port 8080"
    catalina jpda start
fi
