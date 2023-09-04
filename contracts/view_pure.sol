// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract View {
    uint256 a = 10;
    // variables outside the function are also available but does not chahge
    function view_func() public view returns (uint256) {
        return a + 2;
    }
}

contract Pure {
    // Use only as variables within a function
    function pure_func() public pure returns (uint256) {
        uint256 a = 3;
        return a + 3;
    }
}