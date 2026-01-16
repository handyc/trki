#!/bin/bash
af=4; ab=2; tput setaf $af; tput setab $ab; clear;
CHARS=( a b c d e f g h i )

recto () {
sequence_a=""
for z in $(seq 0 $(($RANDOM%40))); do
SELECTED_CHAR=${CHARS[$RANDOM % ${#CHARS[@]}]};
sequence_a="$sequence_a$SELECTED_CHAR"; done

af=$titl; ab=$titlb; tput setaf $af; tput setab $ab;
tput cup $randomi2 $BEG; printf "$sequence_a"

af=2; ab=4; tput setaf $af; tput setab $ab;
for goo in $(seq 1 $(($ysize))); do
tput cup $(($randomi2+$goo)) $BEG; printf "$sequence_a"; done
}

BELEND=20; for i in $(seq 0 $BELEND); do
BEG=$(($RANDOM%70)); randomi2=$(($RANDOM%24))
titl=$(($RANDOM%16)); titlb=$(($RANDOM%16)); ysize=$(($RANDOM%12))
recto; sleep 1; done
tput sgr0; tput cup 0 0;
