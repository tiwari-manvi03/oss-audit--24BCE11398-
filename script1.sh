#!/bin/bash
#Script 1: System Identity Report
#Author: Manvi
#Course: Open Source Software

#--- Variables
STUDENT_NAME="Manvi"
SOFTWARE_CHOICE="Mozilla Firefox"

#System info
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)

#TODO: Add distro name, date, and license message (Added below)
DISTRO=$(cat /etc/os-release | grep "^PRETTY_NAME" | cut -d '=' -f 2 | tr -d '"')
CURRENT_DATE=$(date '+%A, %d %B %Y')
LICENSE_MSG="The Linux OS kernel is licensed under the GPL v2 open-source license."

#--- Display
echo "=================================="
echo " Open Source Audit - $STUDENT_NAME"
echo " Chosen Software   - $SOFTWARE_CHOICE"
echo "=================================="
echo "Kernel : $KERNEL"
echo "User   : $USER_NAME"
echo "Uptime : $UPTIME"
echo "Distro : $DISTRO"
echo "Date   : $CURRENT_DATE"
echo "----------------------------------"
echo "$LICENSE_MSG""
