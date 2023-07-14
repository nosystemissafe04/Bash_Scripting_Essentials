#!/bin/bash

directory=/etaac

if [ -d $directory ]
then
  echo $? 
  echo "the directory is present in the system"
else
  echo $?
  echo "the directory is not present in the system"
fi
