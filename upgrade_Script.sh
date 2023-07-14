#!/bin/bash

if [ -d /etc/apt ]
then
 sudo apt update 
 sudo apt dist-upgrade
fi
 
if [ -d /etc/pacman.d ]
then 
  echo "i dont know the command to update an arch distribution "
fi 
