// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Function {

    // Functions can return multiple values.
    function returnMany() public pure returns(uint256, bool, string memory) {
        return (1, true, "Hello Solidity");
    }

    // Return values can be named.
    function nameValue() public pure returns (uint256 x, bool b, string memory s) {
        return (1, true, "Hello Solidity");
    }

    // Return values can be assigned to their name.
    function assignedName() public pure returns (uint256 x, bool b, string memory s) {
        x = 1;
        b = true;
        s = "Hello Solidity";
    }
}