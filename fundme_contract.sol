// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract FundMe {
    mapping(address => uint) public contributors;
    address public admin;

    constructor() {
        admin = msg.sender;
    }

    function contribute() public payable {
        contributors[msg.sender] += msg.value;
    }

    function getBalance() public view returns(uint) {
        return address(this).balance;
    }

    function withdraw() public {
        require(msg.sender == admin, "Only admin can withdraw");
        payable(admin).transfer(getBalance());
    }
}