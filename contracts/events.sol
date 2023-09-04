// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Event {
    // evnet eventName (use type and name);
    event info(string name, uint256 age);

    function sendMoney() public {
        // emit -> push the event paramether
        emit info("Hoo", 12);
    }
}