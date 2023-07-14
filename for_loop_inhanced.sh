#!/bin/bash

for file in /var/*
do
  if sudo file $file/* | grep directory
   then
    for file_inside in $file/*
     do
     if sudo file $file_inside/* | grep directory
     then 
      for file_third in $file_inside/*
        do
         sudo file $file_third 	
        done 
     else 
      sudo file $file_inside
        fi  
     done
 else
  sudo file $file
 fi
done 
echo "the examination of this directory is done successfully" 
