// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Arrays {
    uint256[] public ageArray;

    function ageLength() public view returns(uint256) {
        return ageArray.length;
    }

    function pushArray(uint256 _age) public {
        ageArray.push(_age);
    }

    function getArray(uint256 _index) public view returns(uint256) {
        return ageArray[_index];
    }

    function popArray() public  {
        ageArray.pop();
    }

    function deleteArray(uint256 _index) public {
        delete ageArray[_index];
    }

    function chagneArray(uint256 _index, uint256 _age) public {
        ageArray[_index] = _age;
    }
}