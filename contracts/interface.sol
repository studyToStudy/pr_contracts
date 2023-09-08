// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

/*
    interface: 스마트 컨트랙 내에서 정의되어야 할 필수 내용
    1. 함수는 external
    2. enum, struct
    3. 변수, 생성자 불가

    rust의 impl과 유사한듯
*/

interface Iteminfo {
    struct item {
        string name;
        uint256 price;
    }
    function addItemInfo(string memory _name, uint256 _price) external;
    function getItemInfo(uint256 _index) external view returns(item memory);
}

contract myItem is Iteminfo {
    item[] public itemList;

    function addItemInfo(string memory _name, uint256 _price) override public {
        itemList.push(item(_name, _price));
    }
    
    function getItemInfo(uint256 _index) override public view returns (item memory) {
        return itemList[_index];
    }
}