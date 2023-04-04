#!/bin/bash

#Input
name=$1
file=$2

#Process

awk '{ total = $3 * $4; print $0, total }' $file | grep $name > test.txt
awk '{print $1" "$5}' test.txt > total_$name_$file
rm test.txt
less total_$name_$file
echo "The output is: "total_$name_$file 