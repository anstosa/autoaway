#! /bin/bash

# go to autoaway dir
cd "$( dirname "${BASH_SOURCE[0]}" )"

# import config
source config.sh

# start autoaway
python autoaway/autoaway.py --devices $DEVICES --notify notify.sh $OPTIONS

