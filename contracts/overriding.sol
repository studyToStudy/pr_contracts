// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

abstract contract Father{
    string public familyName = "Kim";
    string public givenName = "Jung";
    uint256 public money = 100; 
    
    constructor(string memory _givenName) {
        givenName = _givenName;
    }
    
    
    function getFamilyName() view public  returns(string memory){
        return familyName;
    } 
    
    function getGivenName() view public  returns(string memory){
        return givenName;
    } 
    
    // Keyword virtual
    function getMoney() view virtual public returns(uint256){
        return money;
    }
    

}

contract Son is Father("James"){
    
    uint256 public earning = 0;
    function work() public {
        earning += 100;
    }
    // Keyword override
    function getMoney() view public override returns(uint256) {
        return money + earning;
    }
  

}