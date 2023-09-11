// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

/*
    payable -> 이더/토큰과 상호작용시 필요한 키워드
    send, transfer, call을 이용해서 이더를 보낼때 payable 키워드가 필요함
    주로 함수, 주소, 생성자에 붙혀서 사용됨

    msg.value -> 트랜잭션에서 전달된 이더의 양(송금보낸 코인의 값)
    
    send -> 2300 gas, 성공여부를 true, false로  리턴
    transfer -> 2300 gas, 실패시 에러 리턴
    call -> 가변 gas, 성공여부를 true, false로 리턴
*/


contract ReceiveEther {
    // _to -> 이더 받을 사람
    event money(uint256 _value);

    function sendMoney(address payable _to) public payable {
        bool sent = _to.send(msg.value);
        require(sent, "Failed to send Ether");
    }

    function transferMoney(address payable _to) public payable {
        _to.transfer(msg.value);
        emit money(msg.value);
    }

    function callMoney(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
        emit money(msg.value);
    }
}