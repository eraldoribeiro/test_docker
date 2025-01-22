#!/bin/sh -l

echo "Hello $1"
ls -l 
sys161 kernel q
time=$(date)
echo "This is the time: $time"
echo "time=$time" >> $GITHUB_OUTPUT

