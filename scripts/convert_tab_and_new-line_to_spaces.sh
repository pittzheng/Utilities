#!/bin/bash

#This is a script to convert tab and windows's format new-line in .c and .h to spaces
folder=/home/peiqzhen/Projects/RF4CE/RemoTI-Linux/Projects/tools/LinuxHost
cd $folder
for filename in `find . -name \*.[ch]`;do
    filename1=$filename.tab
    filename2=$filename.linefeed
    echo $filename1
    sed 's/	/    /g' $filename >$filename1
    sed 's///g' $filename1 >$filename2
    mv $filename2 $filename
    rm -rf $filename1
    chmod 775 $filename
done
exit
