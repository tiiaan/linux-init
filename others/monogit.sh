#!/bin/bash
#@author tiiaan
dir=/home/tiiaan/Public
x=$(find $dir -type d -name .git)
for i in $x; do
    cd $i
    cd ..
    echo ${PWD##*/}
    git add .
    git commit -m 'update'
    git pull origin master
    git push -u origin master
    echo "-------------------------------"
done