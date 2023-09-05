// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Math {
    function division(uint256 _num1, uint256 _num2) public pure returns (uint256) {
        require(_num1 < 10, "_num1 should not be more than 10");
        return _num1 / _num2;
    }
}

contract Runner {
    event catchErr(string _name, string _err);
    event catchPanic(string _name, uint256 _err);
    event catchLowLevelErr(string _name, bytes _err);

    Math public mathInstance = new Math();
}