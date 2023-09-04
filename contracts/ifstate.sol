// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Ifstatement {
    string private output;

    function check_five(uint _number) public returns (string memory) {
        if (_number == 5) {
            output = "Number is Five";
            return output;
        } else {
            output = "Number is not five";
            return output;
        }
    }
}