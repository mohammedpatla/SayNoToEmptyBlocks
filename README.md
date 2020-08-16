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
git clone https://github.com/mohammedpatla/SayNoToEmptyBlocks
```
```bash
cd /SayNoToEmptyBlocks
```
#### 3. Modify send.sh with your fullnodes `key-alias` & the `account your sending transactions to` (This is your indivdual send TX that will run in SEQ)
###### Make sure to fund your fullnode's account with some SCRT first !
###### Note that this will be used by expect to create a sequence of TX.

```bash
nano send.sh
```
#### 4. Add your password in singmultiple.exp and verifysing.exp
###### Replace "<-password->\r" with your Key-ring password.

```bash
nano signmultipl.exp
nano verifysingle.exp
```
You can see using `cat signmultipl.exp` that it stores your key-alias password in plaintext >=\

#### 5. Now get your sequence number as you will need it in the following commands , run:

```bash
secretcli q account <-Account-Address->
```

#### 6. Now we run the loop to sign all the trasnactions, this be fefault does 300 TX, but you can change it by changing the for loop in `loopmultiple.sh`
```bash
./loopmultiple.sh <sequence-id>
```

#### 7 (optional)Verify all your signed transactions

```bash
./verifysingle.sh <sequence-id>
```

#### 8 Now we need to do some manual editing
Go to file `signedSendTx.json` and change the formating of the file.
The JSON file looks like this 
```
  {
    tx1
  },
  {
    tx2
  },
  
 ```
 
 You need to change it to this format
 
 ```
 [
  {
    tx1
  },
  {
    tx2
  }
 ]
```

#### 9 Now we compress the above file into propr format
```

jq -c '.[]' signedSendTx.json  > formatjson.json

```

#### 10 If all the above steps went good then Your JSON file `formatjson.json` should look something like this
```
{tx1}
{tx2}
```

#### 11 Now running the TX to the Node
```
./multtx.sh <sequence-id>
```

This will run a loop showing an ouput log of running TXs

### Limitations
You may see that at some point in your loop of sending TX's your node will return ` Unotharized sign` with `code:19`

That is because your loop is running extremly fast and before the node registers TX1 the next SEQ of TX2 was submiited, breaking the Sequence.
I was only able to get upto 50TX in a [block](https://explorer.pub.testnet.enigma.co/blocks/55157).

