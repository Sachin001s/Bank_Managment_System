// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract BankSystem
{
    mapping (address=>uint) balance;

    // Get Balance
    function GetBalance() public view returns (uint)
    {
       return balance[msg.sender];
    }

    // Deposit Ether
    function Deposit() public payable 
    {
        balance[msg.sender] = balance[msg.sender] +msg.value;
    }

    // Withdraw Ether
    function Withdraw(uint _amount) public 
    {
        balance[msg.sender] = balance[msg.sender] - _amount;
        payable (msg.sender).transfer(_amount);
    }

    // Transfer Ether
    function Transfer(address _add , uint _amount)  public 
    {
        balance[msg.sender] = balance[msg.sender] - _amount;
        balance[_add] = balance[_add] + _amount;
    }
}


// 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2  sachin
// 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db  kiara