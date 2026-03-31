#!/bin/bash
#Script 4: Log File Analyzer
#Usage: ./log_analyzer.sh /var/log/messages

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0
# Default keyword is 'error' [cite: 171-173]

#TODO: Add a do-while style retry if the file is empty
# This satisfies the requirement to handle empty files or missing arguments
while [ ! -s "$LOGFILE" ]; do
    echo "Error: File $LOGFILE not found or is empty."
    read -p "Please enter a valid log file path (e.g., /var/log/bootstrap.log): " LOGFILE
done

echo "Analyzing $LOGFILE for keyword: $KEYWORD"

# Main while-read loop to process file line by line [cite: 165, 177-182]
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

#TODO: print the last 5 matching lines using tail + grep
echo "---------------------------------------"
echo "Displaying the last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
