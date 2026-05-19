#!/bin/bash

timestamp=$(date "+%F %T")
gitt=$(git log | awk 'NR==1  {print $2}')

for file in *.log
do

mv  "$file" "${file%.log}_${timestamp}.log"

done


for py_file in *.py
do

mv "$py_file" "${py_file%.py}_${gitt}.py"

done
