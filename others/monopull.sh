#!/bin/bash
#@authro tiiaan
dir=/home/tiiaan/Public
x=$(find $dir -type d -name .git)
for i in $x; do
    cd $i
    cd ..
    echo ${PWD##*/}
    git pull origin master
    echo "-------------------------------"
done