#!/bin/bash

path=/var/test
if [ -d $path ]
then
   echo "file exists in the $path directory"
   cd $path
else
   sudo mkdir $path
   cd $path
fi
str1="my name is ali hanf and i am here to find the total size of the file with the help of wc commands"
str2="and this is for the left over files to be written in them and i want to get the total number of bytes and words and total number of lines present in the file ok byee."
sudo touch ali{0..9}
sudo chown mohammad *
sudo echo $str1 | tee -a ali{0..4}
sudo echo $str2 | tee -a ali{5..9}



