// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Array_two {
    // Several ways to initialize an array
    uint256[] public intArr;
    uint256[] public numArr = [1,2,3,4,5];
    
    // Fixed sized array, all elements initialize to 0
    uint256[10] public myArr;

    function get(uint256 i) public view returns (uint) {
        return intArr[i];
    }

    function push(uint i) public {
        intArr.push(i);
    }

    function pop() public {
        intArr.pop();
    }

    function getLength() public view returns (uint256) {
        return intArr.length;
    }
}