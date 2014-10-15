#! /bin/bash

# go to autoaway dir
DIR="$( cd "$( dirname "$0" )" && pwd )"

# import config
source config.sh

# start autoaway
python autoaway/autoaway.py --devices $DEVICES --notify $DIR/notify.sh $OPTIONS

