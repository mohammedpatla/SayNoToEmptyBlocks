# #SayNoToEmptyBlocks
A ChainofSecrets.org fun initiative to fill blocks on Enigma Blockchain at Bootstrap!
###### This should only be installed on a fullnode not a validator, as it exposes your key in plaintext


#### 1. Install Expect

```bash
sudo apt-get install expect
```
```bash
sudo apt-get install expect-dev
```
#### 2. Clone this wonderful repo!

```bash
git clone https://github.com/chainofsecrets/SayNoToEmptyBlocks/
```
```bash
cd /SayNoToEmptyBlocks
```
#### 3. Modify send.sh with your fullnodes `key-alias` & the `account your sending transactions to`
###### Make sure to fund your fullnode's account with some SCRT first !

```bash
nano send.sh
```
#### 4. Run this command to capture your key-alias password
###### Type your fullnode key-alias in twice and it will generate a new file in this folder called "sending-pass.exp"

```bash
autoexpect -f sending-pass.exp bash send.sh
```
You can see using `cat sending-pass.exp` that it stores your key-alias password in plaintext >=\

#### 5. Lastly run this in screen then `ctrl+a+d` to disconnect from screen to keep it running

```bash
screen
```

```bash
watch -n 0.5 bash tx.sh
```
You can re-attach to the screen session when ever by running `screen -ls` & then `screen -x SESSION-ID`



Donate or Vote for us on Enigma Blockchain Mainnet  :D 
Donation address: `enigma1hscf4cjrhzsea5an5smt4z9aezhh4sf5scqgr2`



