#!/bin/bash
command=$(which btop)
#echo $command
if [ -z $command ]
then
  echo "btop is not present in the system,installing it .... "
   sudo apt install btop -y 
else 
  echo "btop is present in the system"
  btop
fi
