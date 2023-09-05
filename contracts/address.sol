// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// 주소와 거래가능한 주소
// payalbe address는 Ether를 받을 수 있는 주소에 사용됨


contract Address {
    address public userAddress;
    address payable public recipientAddress;

    function setAddress(address _add, address payable _recipientAddress) public {
        userAddress = _add;
        recipientAddress = _recipientAddress;
    }
}