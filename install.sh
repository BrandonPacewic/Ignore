# Copyright (c) Brandon Pacewic
# SPDX-License-Identifier: MIT

#!/bin/env bash

set -e

read -r -p "This script requires root permissions, please acknowledge that it is being run as root. [y|n]: "

if ! [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "Aborting"
    exit 1
fi

echo "Updating script permissions..."
chmod u+x src/ignore_python_extention.py
chmod u+x src/ignore.sh

echo "Linking to bin..."
sudo ln src/ignore_python_extention.py /usr/local/bin/ignore_python_extention
sudo ln src/ignore.sh /usr/local/bin/ignore

echo "Done, Enjoy :)"