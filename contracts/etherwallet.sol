// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract EhterWallet {
    address payable owner;
    
    constructor() {
        owner = payable(msg.sender);
    }

    receive() external payable {}
    
    function withdraw(uint256 _amount) external {
        require(msg.sender == owner, "Caller is not Owner");
        payable(msg.sender).transfer(_amount);
    }

    function getbalance() external view returns (uint256) {
        return address(this).balance;
    }
}