#!/bin/bash

for file in logfiles/*
do 
 sudo tar -czvf $file $file
done
 echo "compression is done "
