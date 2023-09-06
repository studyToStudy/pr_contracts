// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// require 실행 전에 입력 및 조건을 검증하는데 사용된다. 남은 gas는 반환
// revert, 남은 gas 반환
// assert, 어떤 값을 변경하고 나서 그 조건을 만족하는지, 혹은 절대로 발생하면 안되는 상황인지 체크, 남은 gas 반환 x 


contract Error {

    function testRequire(uint _i) public pure {
        // input
        require(_i > 10, "Input must be greater than 10");
    }

    function testRevert(uint _i) public pure {
        // 조건이 보다 자세하고 복잡할 경우
        if (_i <= 10) {
            revert("Input must be greater than 10");
        }
    }

    uint256 public num;

    function testAssert() public view {
        assert(num == 0);
    }
}