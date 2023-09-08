// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract DutchPay {
    
    // 계약자
    address payable owner;
    address payable payer;

    // 음식 가격 (Ether 단위)
    uint256 mealPrice;
    // 식사비 분담 비율
    uint256 payRatio;
    // 체결 상태
    bool isMealPaid;

    // 이벤트: 식사비 지불 이벤트
    event MealPaid(address indexed payer, uint256 amount);

    constructor(address payable _owner, address payable _payer, uint256 _mealPriceInEther, uint256 _payRatio) {
        owner = _owner;
        payer = _payer;
        mealPrice = _mealPriceInEther * 1 ether; // Ether 단위로 변환
        payRatio = _payRatio;
        isMealPaid = false;
    }

    // Modifier: 지불 상태 확인
    modifier mealNotPaid() {
        require(!isMealPaid, "Meal has already been paid");
        _;
    }

    // Modifier: 지불자 확인
    modifier onlyPayer() {
        require(msg.sender == payer, "Only the payer can pay the meal");
        _;
    }

    function payMeal() public mealNotPaid onlyPayer {
        uint256 amountToPay = (mealPrice * payRatio) / 100;
        payable(payer).transfer(amountToPay);
        isMealPaid = true;
        emit MealPaid(msg.sender, amountToPay);
    }
}
