// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.22;

import {Test, console} from "forge-std/Test.sol";
import {PoseidonT2} from "../src/libraries/PoseidonT2.sol";
//import {PoseidonT3} from "../src/libraries/PoseidonT3.sol";

contract CryptographyTest is Test {
  function setUp() public {}

  function test_IMT_writeOutput() public {
    // private inputs
    uint256 nullifier = 0;

    // calculated inside circuit
    uint256 nullifierHash = PoseidonT2.hash([nullifier]); // in uint256
    console.log("nullifierHash:", nullifierHash);
    // run `make test` to get the hex value

    //Convert nullifierHash in uint256 to hex via https://www.rapidtables.com/convert/number/decimal-to-hex.html

    //inside hash_preimage/Prover.toml, prefix "0x" to the nullifierHash hex value, and save it into the "hash" value, and save "0" to the hash_preimage value

    //to make hash_preimage/target/witness.gz: run `nargo execute witness`

    //to generate proof: run `bb prove -b ./target/hash_preimage.json -w ./target/witness.gz -o ./target/proof`

    // go to the project root, then run `mkdir proof_convert`, cd into it and `cargo init`
  }
}
