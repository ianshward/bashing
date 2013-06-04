#!/usr/bin/env bash

# TODO recursively find all tarballs in directories

for d in `ls`
do
    cd $d
    tar tzf tmp.tgz
    if [ $? -ne 0 ]; then
        echo "Tar error in: $d"
    fi
    cd ..
done
