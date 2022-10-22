#!/bin/bash
echo "Enter path to directory"
read path
if [[ $path == "/"* ]]; then 
	if [ -d $path ]; then
		echo "This folder is exists"
	else
		mkdir $path
		echo "The folder is created"
	fi
else
	echo "Enter the absolute path to the folder"
fi

