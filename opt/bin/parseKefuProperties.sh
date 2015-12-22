#!/bin/sh
if [ $# -lt 1 ]; then
    echo "need kefu source cod folder"
    exit 1
fi
find $1 -name *.java -exec grep "@Value(" {} \;
