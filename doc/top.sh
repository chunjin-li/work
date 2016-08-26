#!/bin/sh

#tomcatpid=`jps | grep Cassandra | head -1 | awk '{print $1}'`
tomcatpid=`jps -lmv | grep app | head -1 | awk '{print $1}'`
top -p $tomcatpid -H -d 1 -n 2 -b > javaTop.log &
