// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract ArrayRemoving {
    
    // Declare Arr
    uint256[] public arr = [1,2,3];

    function remove(uint256 _index) public {
        for (uint256 i = _index; i < arr.length - 1; i++) {
            arr[i] = arr[i + 1];
        }
        arr.pop();
    }
}