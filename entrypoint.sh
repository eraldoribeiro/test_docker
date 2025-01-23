#!/bin/sh -l

# Build OS/161 (Kernel-level)
cd kern/conf
./config DUMBVM
cd ../compile/DUMBVM
bmake depend
bmake
bmake install

# Build OS/161 (Userland)
cd ~
bmake includes
bmake
bmake install

# Run the OS/161 kernel and save the output to a file
cd /root/os161/root/
/root/os161/tools/bin/sys161 kernel q > output.txt 
cat output.txt

the_string=$(grep "DUMBVM" "output.txt")
echo $the_string | grep -oP '.*(?=system version)'
var=$(echo $the_string | grep -oP '.*(?=system version)')

if [ "$var" != "Put-your-group-name-here's" ]
then
    echo "No changes in line containing Put-your-group-name-here's"
    exit 1
fi






