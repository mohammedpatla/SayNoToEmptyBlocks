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
#### 3. Run this command to capture your key-alias password
```bash
autoexpect -f sending-pass.exp bash send.sh
```
