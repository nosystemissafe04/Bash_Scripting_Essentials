#!/bin/bash

program=hping3
sudo apt install $program -y >> log_file.log
if [ $? -eq 0 ]
then 
  path_to_program=$(which hping3)  
  echo "$program is installed in the system with the status code $?"
  echo "path of the $program $path_to_program"
else
 #  path_to_program=which hping3
  echo "there is a problem in installing the $program or you may have this program already"
  if [ -z $path_to_program ]
  then
   file=$(sudo find . -name "log_file.log")
    echo "the $program is not installed error while installing the $program refer to the $file"
  fi
fi
