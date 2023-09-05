// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

/*
    There are 3 types of variables in Solidity
*/

contract Varables {
    // State variables are stored on the bolckchain
    string public text = "Hello";
    uint256 public number = 123;

    function anyThing() view public {
        // Local variables are not saved to the blockchain
        uint256 i = 1234;

        uint256 timestamp = block.timestamp;
        address sender = msg.sender;
    }
}