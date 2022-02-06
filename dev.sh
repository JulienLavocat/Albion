#!/bin/bash
CODE_FOLDERS=('functions' 'public')
FOLDERS=('firebase' 'functions' 'public')

for folder in "${CODE_FOLDERS[@]}"
	do
		cd ~/Dev/Albion/$folder && code . && cd ..
	done

for folder in "${FOLDERS[@]}"
	do
		if [ "$folder" = "firebase" ]; then
			gnome-terminal --tab --working-directory=/home/julien/Dev/Albion/ --title=$folder -- firebase emulators:start --import=.firebase-data --export-on-exit
		else
			gnome-terminal --tab --working-directory=/home/julien/Dev/Albion/$folder --title=$folder -- yarn start
		fi
done

exit 0
