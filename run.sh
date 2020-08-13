#!/bin/bash
var=$1
for i in {1..3}
do
	./send.sh $var
	var=$(($var+1))
done
