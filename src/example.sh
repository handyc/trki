#!/bin/bash

clear;
CHARS=( a b c d e f g h i )
SELECTED_CHAR=${CHARS[$RANDOM % ${#CHARS[@]}]};

BEG=$(($RANDOM%80))
END=$(($BEG+10))
randomi=$(($RANDOM%24))
for i in $(seq $BEG $END);
do
af=20; ab=0;
tput setaf $af; tput cup $randomi $i; tput setab $ab; printf "x"
done

recto () {
af=$titl;
ab=$titlb;
tput setaf $af; tput setab $ab; tput cup $randomi2 $i; printf "${SELECTED_CHAR}"

af=2;
ab=4;
tput setaf $af; tput setab $ab;

for goo in $(seq 1 $(($ysize)));
do
tput cup $(($randomi2+$goo)) $i; printf "${SELECTED_CHAR}"
done

af=$titl;
ab=$titlb;
tput setaf $af; tput cup $(($randomi2+$ysize+1)) $i; tput setab $ab; printf "${SELECTED_CHAR}"
}

BELEND=10
for i in $(seq 0 $BELEND); do
BEG=$(($RANDOM%70))
END=$(($BEG+$(($RANDOM%30))+1))
#af=$(($RANDOM%16));
#ab=$(($RANDOM%16))
randomi2=$(($RANDOM%24))

titl=$(($RANDOM%16))
titlb=$(($RANDOM%16))
ysize=$(($RANDOM%10))
for i in $(seq $BEG $END);
do
SELECTED_CHAR=${CHARS[$RANDOM % ${#CHARS[@]}]};
recto;
done
done

tput sgr0;
