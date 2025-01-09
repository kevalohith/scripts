#!/bin/bash
echo "press 1 it will create 2 files"
echo "Press 2 to change the permission of a file"
echo "Press 3 to search a pattern in a file"
echo "Press 4 to list the files in current directory recursively"

echo "press the numbers from 1 to 4"
read choice

case $choice in
        1)
                echo "creating 2 files file1 & file2";
                touch file1 file2
                ;;
        2)
                echo "enter the name of the file to change the permission";
                read fileName;
		chmod 777 $fileName
                ;;
	3)
                echo "enter the pattern to search in a file";
                read pattern;
                read filename;
                grep -i "$pattern" $file_name
                ;;
        4)
                echo "enter the path to list the files from the current directory";
                read path;
                ls -l
                ;;
esac
