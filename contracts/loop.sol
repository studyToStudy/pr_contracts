// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Loop {

    event DistrictIndexName(uint256 _index, string _name);
    string[] private districtName = ["Gyeonggi", "Seoul", "Incheon", "Busan"];

    function forLoop() public {
        for (uint256 i = 0; i < districtName.length; i++) {
            emit DistrictIndexName(i, districtName[i]);
        }
    }

    function whileLoop() public {
        // set initial value
        uint256 i = 0;
        while (i < districtName.length) {
            emit DistrictIndexName(i, districtName[i]);
            i++;
        }
    }
}