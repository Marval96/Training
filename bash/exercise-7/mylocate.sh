#!/bin/bash

#Execise 7: milocate

string=$1
zgrep "$string" "$HOME/.milocate.gz" | awk '{print $NF}'