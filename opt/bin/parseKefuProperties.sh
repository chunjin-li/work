#!/bin/sh

if [ $# -lt 1 ]; then
    sp=/work/workspace/kefu
else 
    sp=$1
fi

find $sp -name *.java -exec grep "@Value(" {} \; | awk '{for(i=1;i<=NF;i++){if(i==1){if(index($1,"//")!=1){printf "%s",$i}} else {printf "%s",$i}}print ""}' | awk 'BEGIN{sz=length("@Value(\"${")}{print substr($0,sz+1)}' | awk -F':' '{print $1}' | awk -F'{' '{if(NF>1){print $2} else {print $1}}' | awk -F'}' '{print $1}' | sort | uniq
