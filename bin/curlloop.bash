#!/usr/bin/env bash

URL="http://example.iana.org/"

while [ 1 ]
do
    curl -sD - $URL |grep "200 OK"
    if [ $? != 0 ]; then
        echo "Check failed"
        exit
    fi
    sleep 3
done
