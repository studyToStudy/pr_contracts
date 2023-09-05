// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Immutalbe {

    // Immutable variables are like constants.
    // Values of immutalbe variables can be set inside the constructor but cannot be modified afterwards

    address public immutable MY_ADDRESS;
    uint256 public  immutable MY_UINT;

    constructor(uint _myUnit) {
        MY_ADDRESS = msg.sender;
        MY_UINT = _myUnit;
    }
}