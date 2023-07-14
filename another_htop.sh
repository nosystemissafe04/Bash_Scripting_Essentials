#!/bin/bash

check=$(which htop)

if [ $check == "/usr/bin/htop" ]
then 
  echo "htop is present in the system running it"
  $check
else 
  echo "htop is not present in the system"
fi
