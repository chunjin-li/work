#!/bin/sh
if [ "$1" != "" ]; then
    basescore=$1
else
    basescore=1800
fi

nm=10000
if [ "$2" != "" ]; then
    nm=$2
fi

key="orderset-"`uuidgen`
if [ "$3" != "" ]; then
    key=$3
fi

prefix="timer-"
if [ "$4" != "" ]; then
    prefix=$4
fi

echo 'order set key: '$key
echo 'order set member size:'$nm
echo 'order set member prefix:'$prefix
echo 'score distributioin: '$basescore
echo "assign \$1 for score distribution (member in order set score sub than between max score and min score)"
echo "assign \$2 for order set member size"
echo "assign \$3 for order set topic"
echo "assign \$4 for order set member prefix"

start=`date +%s`
for((i=0;i<$nm;i++)); do
    member=$prefix""$i

    sce=`echo $RANDOM%$basescore | bc`

    timestamp=`date +%s`
    score=`echo $timestamp+$sce | bc`
    redis-cli ZADD $key $score $member > /dev/null
done
end=`date +%s`

cost=`echo $end-$start |bc`
echo "cost "$cost
