#!/bin/bash

#Input
name=Ana
file=january.txt

#Process
grep -v Budapest $file > grep.txt
grep $name grep.txt > ana.txt
rm grep.txt

echo "El resultado esta en: ana.txt"
less ana.txt
