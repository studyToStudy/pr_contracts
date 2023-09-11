// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
/*
    1. fallback()
    1-1 무기명 함수
    1-2 external 필수
    1-3 payable

    왜 쓰는가
    1. 스마트컨트랙이 이더를 받을 수 있게됨
    2. 이더를 받고난 이후 어떠한 행동을 취할 수 있게 해줌
    3. call 함수로 없는 함수가 불려줄때, 어떤 행동을 이어갈 수 있게 해줌

*/

contract Fallback {
    event Log(string func, uint256 gas);

    fallback() external payable {
        // 현재 실행중인 트랜잭션에서 남은 가스의 양
        emit Log("fallback", gasleft());
    }
    // 이더를 받을 때 사용
    receive() external payable {
        emit Log("receive", gasleft());
    }

    // 잔액조회
    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }
}

contract SendToFallback {
    function transferToFallback(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    function callFallback(address payable _to) public payable {
        (bool sent, ) = _to.call{value: msg.value}("");
        require(sent, "Failed to send Ether");
    }
}