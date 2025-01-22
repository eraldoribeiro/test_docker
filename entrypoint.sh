#!/bin/sh -l

echo "Hello $1"
ls -l 
time=$(date)
echo "This is the time: $time"
echo "time=$time" >> $GITHUB_OUTPUT

