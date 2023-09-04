// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract A {
    string public name;
    uint256 public age;
    // Sets the initial value when instantiated
    constructor(string memory _name, uint256 _age) {
        name = _name;
        age = _age;
    }

    function change(string memory _name, uint256 _age) public {
        name = _name;
        age = _age;
    }
}

contract B {
    // Setting the Initial value
    A instance = new A("Zed", 32);

    function change(string memory _name, uint256 _age) public {
        instance.change(_name, _age);
    }

    function get() public view returns (string memory, uint256) {
        return (instance.name(), instance.age());
    }
}