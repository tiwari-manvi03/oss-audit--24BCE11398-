#!/bin/bash
#Script 2: FOSS Package Inspector
PACKAGE="firefox"

#Check if package is installed
# Note: The PDF mentions using 'rpm -qi or dpkg -l' depending on our Linux system.
# I am using dpkg here since Ubuntu is a Debian-based system.
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|License|Description'
else
    echo "$PACKAGE is NOT installed."
fi

# Add a case statement that prints a one-line 
#philosophy note about the package based on its name
case $PACKAGE in
    httpd) echo "Apache: the web server that built the open internet" ;;
    mysql) echo "MySQL: open source at the heart of millions of apps" ;;
    firefox) echo "Firefox: A nonprofit fighting for an open web" ;;
    vlc) echo "VLC: Plays anything - built by students in Paris" ;;
    git) echo "Git: The tool Linus built when proprietary failed him" ;;
esac
