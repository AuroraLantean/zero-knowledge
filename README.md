# zero-knowledge

## Installation / Setup
Install Foundry: https://book.getfoundry.sh/getting-started/installation
Or update Foundry: `foundryup`
Setup a Foundry project: `forge init --no-git`

Install Noir: https://noir-lang.org/docs
Or update Noir: noirup

Install bbup:
```
curl -L bbup.dev | bash
pnpm install -g bbup
bbup
```

Make `circuits` folder, and two folders under that: `hash_preimage`, `imt`, then initialize a Nargo hash function with its test:
```
cd circuits/hash_preimage 
nargo init
make nargo1
```
Add a Nargo Prover.toml file
```
cd circuits/hash_preimage
nargo check
```

Copy PoseidonT2.sol and PoseidonT3.sol
from https://github.com/chancehudson/poseidon-solidity/blob/main/contracts/ to src/libraries/

See the instructions in test/IMT.sol



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
