#!/bin/bash

terminal=/dev/pts/1
columns=$(tput cols)
rows=$(tput lines)

af=3; ab=5; tput setaf $af; tput setab $ab; clear;

CHARS=( a b c d e f g h i )

recto () {
WIDTH=$(( ( RANDOM % 50 )  + 1 ))
BEG=$(($RANDOM% $WIDTH)); randomi2=$(($RANDOM%24))
titl=1; titlb=11;
ysize=$(($RANDOM%12))
sequence_a=""

for z in $(seq 0 $WIDTH); do
SELECTED_CHAR=${CHARS[$RANDOM % ${#CHARS[@]}]};
sequence_a="$sequence_a$SELECTED_CHAR"; done

af=$titl; ab=$titlb; tput setaf $af; tput setab $ab;
tput cup $randomi2 $BEG; printf "$sequence_a"

af=2; ab=4; tput setaf $af; tput setab $ab;
for goo in $(seq 1 $(($ysize))); do
tput cup $(($randomi2+$goo)) $BEG; printf "$sequence_a"; done
}

BELEND=12; for i in $(seq 0 $BELEND); do
recto;
#sleep 1;
done
tput sgr0; tput cup 0 0;

echo "rows:"$rows
echo "columns:"$columns
echo "-----------------------------"
echo "-----------------------------"
