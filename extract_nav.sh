#!/bin/bash

# URL of the NAV data file
URL="https://www.amfiindia.com/spages/NAVAll.txt"

# Download the file
curl -s "$URL" -o NAVAll.txt

# Extract Scheme Name (2nd column) and Asset Value (4th column) from the file
# The file is pipe(|) separated and has a header row we skip
# Output tab-separated values with header

echo -e "Scheme_Name\tAsset_Value" > nav_extracted.tsv
awk -F'|' 'NR>1 {print $2 "\t" $4}' NAVAll.txt >> nav_extracted.tsv

echo "Extracted data saved to nav_extracted.tsv"
