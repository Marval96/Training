#!/bin/bash

#Exercise 6: find_and_replac
#How many "et" in sandbox/C/lorem.py?
# $ grep -wo -i et lorem.py | wc -l

#Input
seek=$1
replace=$2

#Process

find . -type f -exec grep -w "$seek" {} \; -exec sed "s/\b$seek\b/$replace/g" {} \; > output.txt 
echo "El resultado esta en output.txt"
grep -wo -i $seek output.txt | wc -l 
echo "Se sustituyeron un total de $(grep -wo -i $seek output.txt | wc -l) palabras"

