#!/bin/bash
#Script 5: Open Source Manifesto Generator
# Author: Manvi
# [cite_start]Concept: Uses read for user input, string concatenation, and redirection.[span_0](end_span)

echo "Answer three questions to generate your manifesto."
echo

# [span_1](start_span)Using read -p as per the PDF structure [cite: 75-76]
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

#TODO: Compose a paragraph using $TOOL, $FREEDOM, $BUILD 
# [cite_start]and write it to $OUTPUT using echo and >>[span_1](end_span)

echo "--- MY OPEN SOURCE MANIFESTO ---" > "$OUTPUT"
echo "Generated on: $DATE" >> "$OUTPUT"
echo "Author: Manvi" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I believe that software should be a public resource. Every day, I rely on $TOOL" >> "$OUTPUT"
echo "to navigate the digital world. To me, true freedom in technology means $FREEDOM." >> "$OUTPUT"
echo "If I had the chance to contribute back to the community, I would build a $BUILD" >> "$OUTPUT"
echo "and release it under an open license so others can learn and grow from it." >> "$OUTPUT"

echo "Manifesto saved to $OUTPUT"
cat "$OUTPUT"
