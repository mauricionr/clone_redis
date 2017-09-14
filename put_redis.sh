#!/bin/bash
while read line
do
    printf "%b" "$line"| redis-cli -p 6379 --pipe
done < "$1"