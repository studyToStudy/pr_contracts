// SPDX-License-Identifier: MIT
pragma solidity 0.8.21;

contract Counter {
    int public count;
    
    // get count
    function get() public view returns (int) {
        return count;
    }
    // increase count
    function inc() public {
        count += 1;
    }
    // decrease count
    function dec() public {
        count -= 1;
    }
}