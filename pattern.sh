#!/bin/bash

numberoffiles=$(ls /var | wc -l)
echo $numberoffiles 
var=1
 while [ $var -le $numberoffiles ]
 do 
   
