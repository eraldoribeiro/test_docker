#!/bin/sh -l

cd /root/os161/root/
/root/os161/tools/bin/sys161 kernel q > output.txt 
message="$(cat output.txt)"
EOF=$(dd if=/dev/urandom bs=15 count=1 status=none | base64)
"text<<EOF"$'\n'"$message"$'\n'EOF >> $GITHUB_OUTPUT
# cat output.txt >> $GITHUB_OUTPUT

