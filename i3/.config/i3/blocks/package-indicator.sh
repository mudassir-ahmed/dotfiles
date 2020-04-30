#!/bin/bash

# Author: Mudassir Ahmed
# Usage: This script is to be used with i3blocks. It displays to the user
# the number of upgrades available using apt. If there are no upgrades (updates) 
# available then the indicator is hidden since it prints nothing.

numberOfUpdates=`apt-get -u upgrade --dry-run | grep --only-matching --extended-regexp "[0-9]+ to upgrade" | awk '{ print $1 }'`

if [ $numberOfUpdates -ne 0 ]; then
    echo $numberOfUpdates
fi
