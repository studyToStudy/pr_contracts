// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract A {
    string public name = "Contract A";

    function get() public view returns (string memory) {
        return name;
    }
}

contract B is A {
    constructor() {
        name = "Contract B";
    }
}