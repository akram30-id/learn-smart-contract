// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleBankWithdraw {
    
    mapping (address => uint) public balances;

    // deposit ether to the bank
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }

    // withdraw ether from bank
    function withdraw(uint _amount) public {
        require(balances[msg.sender] >= _amount, "Insuficient balance");
        balances[msg.sender] -= _amount;
        payable(msg.sender).transfer(_amount);
    }

    // check the balance
    function checkBalance() public view returns (uint) {
        return balances[msg.sender];
    }

}