#!/usr/bin/env bash
R0=$(sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt)
#R1=$(sed -E 's/\* I am ([a-zA-Z\s]{1,})\. My favorite sandwich is ([a-zA-Z\s]{1,})./1. \1\n2. \2\n/' < r1_input.txt)
R2=$(sed -E 's/\* sandwich with ([a-zA-z.]{1,}) ([a-zA-z ]{1,})/1. \1\n2. \2\n/' < r2_input.txt)
echo "$R0" >> r0_output.txt
#echo "$R1" >> r1_output.txt
echo "$R2" >> r2_output.txt