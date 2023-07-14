#!/bin/bash
directory=/etc
if [ -d $directory ]
then 
 echo "the following directory is present in the system"
 exit 90
else 
 echo "the following directory is not present in the system"
 exit 100
fi
 
echo "hello world "
echo "hi am alihanfi"
echo "iam 19 year old"
