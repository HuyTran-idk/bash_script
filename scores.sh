#!/bin/bash

# This script is used to read a file containing player names and scores, then specify who beat the score I gave
# ./scores.sh <SEARCH_FILE> <SCORE>

file="$1"
minimum_score="$2"

 while read -r name score
 do
	 if [ "$score" -ge "$minimum_score" ]; then
		 echo "$name scored $score"
	 fi
 done < "$file"


