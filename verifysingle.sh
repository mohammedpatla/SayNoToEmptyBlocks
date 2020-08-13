#!/bin/bash
secretcli tx sign --validate-signatures --from secret1fdrcpf7c6ha0say3r8hsxydmgzstqsg93lq9l9 --offline --account-number=70 --sequence=${2} ${1}