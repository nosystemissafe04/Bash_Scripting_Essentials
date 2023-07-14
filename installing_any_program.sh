#!/bin/bash

program="hping3"

if command -v $program
then 
  echo "$program is present in the system "
else 
  echo "$program is not present in the system installingit "
  sudo apt install $program -y 
  $program 
fi
