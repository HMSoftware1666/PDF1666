#!/bin/bash
for file  in "$0"
do 
	output=$output"\n"$file
	filename=${file%%.*}
	path=${file%/*}
	expansion=${file##*.}
		if ["$expansion" = "jpg" ]
			then 
				convert "$file" converted.pdf
			fi
		done	
notify-send -t 10000 -i  "gtk-ok" "Завершено" "Gotovo"
