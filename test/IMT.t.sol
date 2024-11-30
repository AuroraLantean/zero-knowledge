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
  }
}
