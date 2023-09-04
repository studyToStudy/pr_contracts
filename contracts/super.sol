// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

contract Human {
    event CountryName(string name);

    function country() public virtual {
        emit CountryName("ROK");
    }
}

contract Rok is Human {
    event rokName(string name);

    function country() public override {
        super.country();
        emit rokName("Seoul");
    }
}