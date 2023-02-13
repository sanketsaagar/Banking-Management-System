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

    // Withdraw function
    function Withdraw(uint _amount) public{
        balance[msg.sender] = balance[msg.sender] - _amount;
        payable(msg.sender).transfer(_amount);
    }

    // Transfer function
    function transfer(address _to, uint _amount) public{
        balance[msg.sender] = balance[msg.sender] - _amount;
        balance[_to] = balance[_to] + _amount;
    }
}