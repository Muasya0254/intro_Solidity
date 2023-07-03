//SPDX-License-Identifier: MIT

pragma solidity >= 0.7.6;

contract FirstContract {
    uint256 number = 1;

    function setNumber(uint256 _num) public {
        number = _num;
    }

    function getNumber() public view returns (uint256) {
        return number;
    }
}