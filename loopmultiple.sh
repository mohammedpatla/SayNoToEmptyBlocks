#!/bin/bash
a=$1
for i in {1..1000}
do
	echo "$a"
	expect signmultiple.exp ${a}
	a=$((a+1))
done
