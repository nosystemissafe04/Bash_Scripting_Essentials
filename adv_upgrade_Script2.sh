#!/bin/bash

path=/etc/os-release
if grep -q "Ubuntu" $path || grep -q "Debian" $path
then 
  echo "the distribution is debian"
  sudo apt update 
  sudo apt dist-upgrade
fi

if grep -q "Arch" $path
then 
  echo "the distribution is Arch"
  echo "well i dont know the command to update the arch distribution"
fi
