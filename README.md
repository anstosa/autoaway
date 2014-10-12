# AutoAway for Nest

Installation and configuration scripts for [autoaway.py](https://github.com/MilhouseVH/autoaway.py).

* Configuration file accepts Nest account, device MAC addresses, and optional command line parameters for autoaway.py.
* Start the process in a detached tmux session immediately
* Installs a cron to start the same process after future reboots
* Single command to install and uninstall

## Dependencies

* Python 2.7+
* tmux

## Installation

**Download repo**
```
git clone https://github.com/anstosa/autoaway.git
```

**Configure settings**
```
cd autoaway
cp config.sh.example config.sh
vim config.sh
```

**Install and startup**
```
./install.sh
```

## Usage

To check on the process, attach to the session named "autoaway":
```
# from outside a tmux session
tmux attach -d -t autoaway

# from inside a tmux session
C-b s # then select "autoaway" session with arrows and select with Enter
```

To start/stop/restart autoaway without rebooting:
```
path/to/autoaway/autoaway.d.sh start
path/to/autoaway/autoaway.d.sh restart
path/to/autoaway/autoaway.d.sh stop
```

## Uninstallation
```
path/to/autoaway/uninstall.sh
rm -rf path/to/autoaway
```
