# oss-audit--24BCE11398-Project Overview
Student Name: MANVI TIWARI 
Registration Number: 24BCE11398
Course: Open Source Software (OSS NGMC)
Slot / Date: B-22 | 31/03/2026
Chosen Software: Mozilla Firefox
Description:

This project is an Open Source Audit focused on the Mozilla Firefox web browser. It covers the historical origins of Firefox as a solution to the Internet Explorer monopoly, its adherence to the Mozilla Public License 2.0, and its technical footprint within a Linux (Ubuntu) environment . The audit includes a series of functional shell scripts developed to automate system reporting and file analysis .

Script Descriptions:

script1.sh (System Identity Report): This script identifies the current environment by gathering essential system data such as the kernel version, active username, and system uptime . It also extracts the specific Linux distribution name from system files and displays the current date alongside a mandatory open-source license message regarding the Linux kernel .

script2.sh (FOSS Package Inspector): Designed specifically for Debian-based systems like Ubuntu, this script uses the dpkg tool to verify if the Firefox package is currently installed . If the software is found, it filters and displays technical metadata including the version number and package description, followed by a unique philosophy note about the software’s mission .

script3.sh (Disk and Permission Auditor): This auditor utilizes a loop to scan critical system directories like /etc and /var/log to report their exact disk usage and access permissions. It specifically targets the Firefox configuration directory in the user's home folder to confirm its existence and audit its security settings for the report .

script4.sh (Log File Analyzer): This utility processes system log files to track specific events by counting the occurrences of a user-defined keyword, such as "error". It features a robust error-handling loop that requests a valid file path if the input is missing and concludes by displaying the final five matching entries from the log for quick review .

script5.sh (Open Source Manifesto Generator): This interactive script prompts the user to answer three philosophical questions regarding their daily tools and their definition of technological freedom . It then captures this input to dynamically generate a personalized "Open Source Manifesto" text file, stamped with the current date and author's name .

Execution Instructions:

Following the methodology in the audit, scripts must be granted permissions and run individually to ensure proper user interaction and output capture.1.
Setting Permissions

Use the chmod command to make the scripts executable as demonstrated in the terminal logs:

chmod +x script1.sh
chmod +x script2.sh
chmod +x script3.sh
chmod +x script4.sh
chmod +x script5.sh

2. Running the Scripts
3. 
Execute each script using the ./ prefix as shown in the audit screenshots:
System Identity: ./script1.sh 
Package Inspector: ./script2.sh
Permission Auditor: ./script3.sh 
Log Analyzer: ./script4.sh /var/log/bootstrap.log
Manifesto Generator: ./script5.sh

Technical Summary:

Environment: Ubuntu 24.04.2 LTS.
Language: Bash Shell Scripting.
Key Tools: dpkg for package management, awk/du for disk auditing, and grep for log analysis .
