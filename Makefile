-include .env

.PHONY: all test clean deploy-anvil

all: clean remove install update build

# Clean: remove the build artifacts and cache directories.
clean  :; forge clean

# Remove modules
remove :; rm -rf .gitmodules && rm -rf .git/modules/* && rm -rf lib && touch .gitmodules && forge install foundry-rs/forge-std
#&& git add . && git commit -m "modules"

nargo1 :; nargo test --program-dir ./circuits/hash_preimage --package hash_preimage --exact test_main

install :;
	forge install OpenZeppelin/openzeppelin-contracts

# Update Dependencies, DO NOT USE as this will use Openzeppelin's master branch, which is for development!!!
#update:; forge update

fmt :; forge fmt
build:; forge build

#test :; forge test -vvv --gas-report
test :; forge test -vvv --match-path test/IMT.t.sol

env :; source .env
show_vault :; echo $VAULT

snapshot :; forge snapshot

slither :; slither ./src 

anvil :; anvil -m 'test test test test test test test test test test test junk'
