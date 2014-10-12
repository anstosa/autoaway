#! /bin/bash

# get script dir
DIR="$(cd "$( dirname "$0" )" && pwd)"

# create job
JOB="@reboot $DIR/autoawayd.sh start"

if [ "$1" = "remove" ]; then
    echo "stopping autoaway..."
    ./autoawayd.sh stop
    echo "removing cron..."
    sudo rm /etc/cron.d/autoaway
else
    if [ ! -d "$DIR/autoaway"]; then
        echo "installing dependencies..."
        git clone https://github.com/MilhouseVH/autoaway.py.git autoaway
        git clone https://github.com/anstosa/pynest.git pynest
    fi
    echo "initializing executables..."
    sudo chmod u+x autoaway.sh autoawayd.sh notify.sh uninstall.sh
    echo "installing cron..."
    sudo echo $JOB | sudo tee /etc/cron.d/autoaway > /dev/null
    echo "starting autoaway..."
    ./autoawayd.sh start
fi

echo "done."

