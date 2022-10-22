#!/bin/bash

echo "Enter filename"
read filename

case $filename in
	*.jpg|*.gif|*.png)
		echo "Image"
	;;
	*.mp3|*.wav)
		echo "Audio"
	;;
	*.txt|*.doc)
		echo "Text"
	;;
	*)
		echo "Unknown"
	;;
esac
