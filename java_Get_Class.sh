#!/bin/bash

java -verbose -version | grep "Opened" > path.txt 2>/dev/null 
sed -i 's/\[Opened //; s/\]$//' path.txt
#number_of_lines=$(wc -l < path.txt | cut -f1 -d' ')
#echo $number_of_lines 
mkdir ~/Desktop/JAVA_Classes/
while delimiter= read -r lines;
do 
     class_name=$(echo "$lines" | sed 's/.*\/\([^\/]*\)$/\1/' | tr -d '\n')
     class_name1="${class_name%.jar}"
     mkdir ~/Desktop/JAVA_Classes/$class_name1
     sudo cp $lines ~/Desktop/JAVA_Classes/$class_name1 
     echo $class_name
     path=~/Desktop/JAVA_Classes/$class_name1/$class_name
     sudo unzip -q $path -d ~/Desktop/JAVA_Classes/$class_name1/ 
     #sudo jar -xvf ~/Desktop/JAVA_Classes/$class_name1/$class_name
done < ~/path.txt
sudo find ~/Desktop/JAVA_Classes/. -type d > change_perm.txt
while delimiter= read -r lines
do 
  sudo chown -R $USER:$USER $lines 
done < ~/change_perm.txt
sudo find ~/Desktop/JAVA_Classes/. -name *.class > path_to_classes.txt
#this code is to dicompile  those .class file to .java files to 
while delimiter= read -r lines;
do  
 class_name=$(echo "$lines" | sed 's/.*\/\([^\/]*\)$/\1/' | tr -d '\n')
 class_name1="${class_name%.class}"
 ext="$class_name1.java" 
 removed_word=$(echo "$lines" | grep -oE '[^/]+$')
 result=$(echo "$lines" | grep -oE '.*[^/]+/')  
 sudo javap $lines > $result$ext
  done < ~/path_to_classes.txt
