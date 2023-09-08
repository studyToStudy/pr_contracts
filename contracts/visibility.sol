// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

/*
    public - 모든 계약 및 계정에서 호출 가능
    private - 기능을 정의하는 계약 내에서만
    internal - 내부 기능을 상속하는 내부 전용 계약
    external - 다른 계약 및 계정만 호출할 수 있음
*/

contract Visibility {
    // Private function can only be called
    
    // 상속받은 contract는 이 함수를 사용할 수 없다.
    function privateFunc() private pure returns (string memory) {
        return "This is private Function";
    }

    function testPrivateFunc() public pure returns (string memory) {
        return privateFunc();
    }

    // Internal function can be called
    // 상속받은 contract도 이 함수를 사용할 수 있음.
    function internalFunc() internal pure returns (string memory) {
        return "This is internal Function";
    }

    function testInternalFunc() public pure virtual returns (string memory) {
        return internalFunc();
    }

    // Public functions can be called
    // 현재의 contract
    // 현재 contract 및 상속받은 contract
    // 다른 contract 및 계정/주소
    function publicFunction() public pure returns (string memory) {
        return "This is public Function";
    }

    // External functions can be called
    // 다른 contract 및 계정/주소
    function externalFunction() external pure returns (string memory) {
        return "This is external Function";
    }

    string private privateVar = "This is private variable";
    string public publicVar = "This is public variable";
    string internal internalVar = "This is internal variable";

}