#!/bin/bash


URL="https://www.amfiindia.com/spages/NAVAll.txt"

curl -s "$URL" -o NAVAll.txt

echo -e "Scheme_Name\tAsset_Value" > nav_extracted.tsv
awk -F'|' 'NR>1 {print $2 "\t" $4}' NAVAll.txt >> nav_extracted.tsv

echo "Extracted data saved to nav_extracted.tsv"
