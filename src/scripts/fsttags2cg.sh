#!/bin/bash

### Generated tags for cg3 file ###

tagfile=$1
cgtagfile=$2

echo ""
echo "Picking tags from root.lexc"
echo "processing..."

i="LIST-TAGS += "

cat $tagfile |\
cut -d '!' -f1 |\
cut -d ':' -f1 |\
sed 's/+/¢+/g' |\
sed 's/@/¢@/g' |\
tr '¢' '\n'    |\
egrep '(\+|@)' |\
tr -d ' '  |\
tr -d '\t' |\
sort -u |\
grep -v "@" |\
cut -c2- |\
tr '\n' ' ' > xxrest

j=`cat xxrest`
k=" ;"

echo "$i$j$k" > $cgtagfile

rm -f xxrest

echo "All tags put in src/cg3/fsttags.cg3, to be read by INCLUDE command in the cg3 files"
echo ""
