#!/bin/bash
#finding out where does all the library files of java are stored 
java -verbose -version | grep "Opened" > path.txt 2>/dev/null 
sed -i 's/\[Opened //; s/\]$//' path.txt 
mkdir ~/Desktop/JAVA_Classes/
#collecting all the .class files and storing them on desktop 
while delimiter= read -r lines;
do 
     class_name=$(echo "$lines" | sed 's/.*\/\([^\/]*\)$/\1/' | tr -d '\n')
     class_name1="${class_name%.jar}"
     mkdir ~/Desktop/JAVA_Classes/$class_name1
     sudo cp $lines ~/Desktop/JAVA_Classes/$class_name1 
     echo $class_name
     path=~/Desktop/JAVA_Classes/$class_name1/$class_name
     sudo unzip -q $path -d ~/Desktop/JAVA_Classes/$class_name1/ 
done < ~/path.txt
sudo find ~/Desktop/JAVA_Classes/. -type d > change_perm.txt
#code to change the permission of the files and folder
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
