#!/bin/bash

# script to generate paradigms for generating word forms
# command, when you are in non:
# sh devtools/verb_minip.sh 2SYLL_OD | less
# sh devtools/verb_minip.sh kihlođ 


HLOOKUP=$(echo $HLOOKUP)
GTLANGS=$(echo $GTLANGS)


PATTERN=$1
L_FILE="in.txt"
cut -d '!' -f1 src/fst/stems/verbs.lexc | egrep $PATTERN | cut -d '+' -f1|sort|uniq>$L_FILE

#P_FILE="test/data/testverbparadigm.txt"
P_FILE="test/data/testverbparadigm_kort.txt"

for lemma in $(cat $L_FILE);
do
 for form in $(cat $P_FILE);
 do
   echo "${lemma}${form}" | $HLOOKUP $GTLANGS/lang-non/src/generator-gt-norm.hfstol
#   echo "${lemma}${form}" | $HLOOKUP $GTLANGS/lang-non/src/generator-gt-desc.hfstol
 done
 rm -f $L_FILE
done

