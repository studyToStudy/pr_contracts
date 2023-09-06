// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract A {

    function greet() public pure virtual returns(string memory) {
        return "Hello A";
    }
}

contract B is A {
    function greet() public pure virtual override returns(string memory) {
        return "Hello B";
    }
}

contract C is A {
    function greet() public pure virtual override returns(string memory) {
        return "Hello C";
    }
}

