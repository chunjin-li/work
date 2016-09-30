#!/bin/sh
RETVAL=0

stop() {
        echo -n $"Stopping cassandra"
        echo
        [ $RETVAL -eq 0 ] && kill `ps auxwww|grep 'opt/cassandra/'|grep -v grep |awk '{print $2}'` && rm -rf /data/apps/var/cassandra/cassandra.pid
}

case "$1" in
  stop) 
        stop
        ;;
  *)
        echo $"Usage: $0 {stop}"
        exit 1
esac

exit $RETVAL
