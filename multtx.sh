#!/bin/bash
filename='formatjson.json'
a=$1
jq -c '.[]' signedSendTx.json | while read i; do
    # do stuff with $i
	temp_file=$(mktemp)
	echo "$i" >> "$temp_file"
	secretcli tx broadcast --node=tcp://localhost:26657 ${temp_file}
	a=$((a+1))
	rm ${temp_file}
done