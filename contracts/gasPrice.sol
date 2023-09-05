// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
/*
How mutc ehter do you need to pay for a transaction?

You pay gas spent * gas price amount of Ether, where

- gas is a uint of computation => 가스는 계산의 단위
- gas spent is the total amount of gas used in a transaction => 사용된 가스는 거래에서 사용된 가스
- gas price is how much ehter you are willing to pay per gas

Transactions with higher gas price have higher priority to be included in a block.
가스 가격이 높으면 블록에 포함되는 우선 순위가 더 높다.

Unspent gas will be refunded.
사용되지 않은 가스는 환불된다.

Gas Limit
There are 2 upper bounds to the amount of gas you can spend

- gas limit (max amount of gas you're willing to use for your transaction, set by you)
거래를 위해 사용할 수 있는 최대 가스의 양, 사용자가 설정 가능하다.
- block gas limit(max amount of gas allowed in a block, set by the network)
블록 가스 제한, 네트워크에 의해 설정된다.
*/

contract Gas {
    uint256 public i = 0;

    // 전송한 가스를 전부 사용하면 트랜잭션이 실패한다.
    // 상태를 변경하는것이 이뤄지지 않음.
    // 사용된 가스는 환불되지 않음.
    function forever() public {
        while (true) {
            i ++;
        }
    }
}