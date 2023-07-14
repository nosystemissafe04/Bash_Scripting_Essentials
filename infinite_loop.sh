#!/bin/bash

var=1
var1=0
while [ $var -gt 0 ]
do
 var1=$(( var1 +1 ))
 echo $var $(date)
 echo "total number of iteration=$var1"
done
