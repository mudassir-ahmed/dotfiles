#!/bin/bash

# This just opens a new terminal in the directory located in /tmp/whereami.
WHEREAMI=$(cat /tmp/whereami)

# Note: we are using gnome-terminal instead of i3-sensible-terminal. You may wish to change this if you don't use gnome-terminal.
gnome-terminal --working-directory="$WHEREAMI"



