#!/bin/sh -l

function assert {
  if [ "$1" ]; then
    echo "Assertion passed"
  else
    echo "Assertion failed: $2"
    exit 1
  fi
}

cd /root/os161/root/
/root/os161/tools/bin/sys161 kernel q > output.txt 
cat output.txt

the_string=$(grep "DUMBVM" "output.txt")
echo $the_string | grep -oP '.*(?=system version)'
var=$(echo $the_string | grep -oP '.*(?=system version)')

assert "$var" "Put-your-group-name-here's"




