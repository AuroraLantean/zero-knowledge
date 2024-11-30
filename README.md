# zero-knowledge

## Installation / Setup
Install Foundry: https://book.getfoundry.sh/getting-started/installation
Or update Foundry: `foundryup`
Setup a Foundry project: `forge init --no-git`

Install Noir: https://noir-lang.org/docs
Or update Noir: noirup

Make `circuits` folder, and two folders under that: `hash_preimage`, `imt`
```
cd circuits/hash_preimage 
nargo init
```


## Zero Knowledge Intermediat Merkle Tree
ZK Basics: to prove input existing without revealing the input itself

Input text -> cryptographic hash function -> digest(aka hash)


## Foundry Documentation
https://book.getfoundry.sh/

## Usage

### Build

```shell
$ forge build
```

### Test

```shell
$ forge test
```

### Format

```shell
$ forge fmt
```

### Gas Snapshots

```shell
$ forge snapshot
```

### Anvil

```shell
$ anvil
```

### Deploy

```shell
$ forge script script/Counter.s.sol:CounterScript --rpc-url <your_rpc_url> --private-key <your_private_key>
```

### Cast

```shell
$ cast <subcommand>
```

### Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
