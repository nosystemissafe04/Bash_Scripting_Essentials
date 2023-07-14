#!/bin/bash 

a=100
b=200

if [ $a -gt 100 ] && [ $b -lt 201 ]
then
  echo "the above condition is true hence no problem "
else
  echo "the above condition is not true see the exit status of test command "
  echo $?
fi
