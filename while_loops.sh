
#!/bin/bash

while [ -f ~/Documents/new* ]
do
echo "file exists to this directory :$(realpath ~/Documents/new*) on this time $(date)"
sleep 1
done 

  echo "file does not exists"
