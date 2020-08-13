#!/bin/bash
#SEQ = `secretcli q account secret1fdrcpf7c6ha0say3r8hsxydmgzstqsg93lq9l9 | jq '.value.sequence|tonumber'`

secretcli tx send secret1fdrcpf7c6ha0say3r8hsxydmgzstqsg93lq9l9 secret13glfwuj8sdta5f7ap82qtx95s5u4p4psm5unwm 10uscrt --chain-id=enigma-pub-testnet-2 --account-number=70 --sequence=${1} --generate-only > unsignedSendTx.json
secretcli tx sign --chain-id=enigma-pub-testnet-2 --sequence=${1} --account-number=70 --from=secret1fdrcpf7c6ha0say3r8hsxydmgzstqsg93lq9l9 --offline unsignedSendTx.json >> signedSendTx.json
echo "," >> signedSendTx.json

