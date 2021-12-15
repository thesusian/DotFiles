#!/bin/bash

Theme=$1

backupTheme() {
    mkdir -p ./Themes/$Theme/polybar
    mkdir -p ./Themes/$Theme/i3
    cp ~/.config/i3/config ./Themes/$Theme/i3/
    cp ~/.config/polybar/config ./Themes/$Theme/polybar/
    cp ~/.Xresources ./Themes/$Theme/
}

if [ -z "$Theme" ]
then
    echo "chose a backup directory."
    echo "example: ./BackupTheme.sh Gruvbox"
else
    if [[ ! -d "./Themes/$Theme" ]]
    then
        read -e -p "Theme does not exist, create one? [y/N]" createDir
        [[ "$createDir" == [Yy]* ]] && mkdir -p ./Themes/$Theme && $(backupTheme) || echo "terminated"
    else
        $(backupTheme) 
    fi
fi

