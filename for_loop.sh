#!/bin/bash

for file in /var/*
do 
# echo $file
  for file_inside in $file/*
   do
  # wc --byte $file_inside
  # echo $file_inside 
    if [ -f $file_inside ]
    then 
     file $file_inside 
        fi  
 done
done 
echo "the examination of this directory is done successfully" 
