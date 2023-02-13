// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.13;

contract SskBank{

    mapping(address => uint) balance;

    // Get the Balance of user
    function GetBalance() public view returns(uint){
        return balance[msg.sender];
    }

    // Deposit function 
    function deposit() public payable{
        balance[msg.sender] = balance[msg.sender] + msg.value;
    }
}