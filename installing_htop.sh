#!/bin/bash

command=/usr/bin/htop

if [ -f $command ]
then
  echo "htop is present in this system"
  $command
else 
  echo "htop is not present in this system . now installing it ..."
 sudo apt install htop -y 
fi

$command
