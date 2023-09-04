// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract external_example {
    uint256 private a = 3;
    
    function get_a() view external returns (uint256)  {
        return a;
    }

}

contract external_example_2 {
    
    external_example instance = new external_example();

    function external_example_get_a() view public returns (uint256)  {
        return instance.get_a();
    }
}