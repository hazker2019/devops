#!/bin/bash

dir=$1  #Имя каталога

if [ -d $dir ]; then

    for var in $dir  
    do
        
        ls -lh $var | awk '{print $1, $5}'
    
    for subdir in $var/*/;
    do
       if [ -d $subdir ]; then

       ls -lh $subdir | awk '{print $1, $5}'
    fi

   done
done
 
else

  echo "Directory not found"

fi

exit 0
