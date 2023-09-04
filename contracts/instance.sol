// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract A {
    uint256 public a = 5;

    function change(uint256 _value) public {
        a = _value;
    }
}

contract B {
    // new instance
    A instance = new A();

    function get_a() public view returns (uint256) {
        return instance.a();
    }

    function change_a(uint256 _value) public {
        instance.change(_value);
    }
}