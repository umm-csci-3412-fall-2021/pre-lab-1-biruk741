#!/usr/bin/env bash

# generateFirst: generate output file for r0_input.txt
generateFirst(){
  R0=$(sed -E 's/\* ([a-zA-Z]+), ([a-zA-Z]+)/1. \1\n2. \2\n/' < r0_input.txt) || exit
  echo "$R0" >> r0_output.txt
}

# generateSecond: generate output file for r1_input.txt
generateSecond(){
  R1=$(sed -E 's/\* I am ([a-zA-Z\s]{1,})\. My favorite sandwich is ([a-zA-Z\s]{1,})./1. \1\n2. \2\n/;t;d' < r1_input.txt)
  echo "$R1" >> r1_output.txt
}

# generateThird: generate output file for r2_input.txt
generateThird(){
  R2=$(sed -E 's/\* sandwich with ([a-zA-z.]{1,}) ([a-zA-z ]{1,})/1. \1\n2. \2\n/' < r2_input.txt)
  echo "$R2" >> r2_output.txt
}

generateFirst && \
generateSecond && \
generateThird