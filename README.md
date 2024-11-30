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
In circuits/hash_preimage/src/main.rs,
we keep secret of the hash_preimage

Copy PoseidonT2.sol and PoseidonT3.sol
from https://github.com/chancehudson/poseidon-solidity/blob/main/contracts/ to src/libraries/

Run `make test` to run test/IMT.sol and get the hex value, nullifierHash. Convert nullifierHash in uint256 to hex via https://www.rapidtables.com/convert/number/decimal-to-hex.html

inside hash_preimage/Prover.toml, prefix "0x" to the nullifierHash hex value, and save it into the "hash" value, and save "0" to the hash_preimage value

to make hash_preimage/target/witness.gz: run `nargo execute witness`

to generate proof: run `bb prove -b ./target/hash_preimage.json -w ./target/witness.gz -o ./target/proof`

Go to the project root, then run `mkdir proof_convert`, cd into it and `cargo init`, add src/main.rs; Fix proof location; Run `cargo run` to get hex version of the proof and an input hash.

Go to project root/circuits/hash_preimage/, then run `nargo compile`

Run `bb write_vk -b ./target/hash_preimage.json` then `bb contract`, and confirm targe/contract.sol has been generated; Then deploy the UltraVarifier contract in Remix.ethereum.org @17:00; 
At the verify function: Copy the proof from above `cargo run` and enter it as 1st argument; 2nd argument is the `["YOUR_INPUT_HASH"]`


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
