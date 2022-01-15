#!/bin/env bash

set e

SCRIPT_DIR="$(dirname "$0")"
TARGET_FILE="$SCRIPT_DIR/.gitignore"

if [[ -e $TARGET_FILE ]] 
then
    read -r -p "A .gitignore file already exists, are you sure you want to proceed? [N|y]: "
    if ! [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Aborting"
        exit 1
    fi
fi

touch .gitignore
python3 _ignore_python_extention.py
subl .gitignore