#!/bin/env bash

set -e

if [[ -e ".gitignore" ]] 
then
    read -r -p "A .gitignore file already exists, are you sure you want to proceed? [N|y]: "
    if ! [[ $REPLY =~ ^[Yy]$ ]]
    then
        echo "Aborting"
        exit 1
    fi
fi

touch .gitignore
_ignore_python_extention
subl .gitignore