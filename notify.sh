#! /bin/bash

# go to autoaway dir
cd "$( dirname "$0" )"

# import variables
source config.sh

# write status
echo "Updating Nest with away status: $1"
if [ "$1" = "here" ]; then
    echo "Property vacant for $3 ($2 seconds)"
else
    echo "Property occupied for $3 ($2 seconds)"
fi

# update Nest
python pynest/nest.py --user $USER --password $PASS away $1

