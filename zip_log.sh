#!/bin/bash

for files in logfiles/*.log
do
 # rar a  $files/*.rar $files/*
 zip -r $files.zip $files
done
 for zipf in logfiles/*.zip
 do 
   zip -r -9 -e logfiles/allinone.zip $zipf
 done 
 
