// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract EasyBank {
    mapping (address => uint) balances;

// เรียกดูเงิน
    function getBalance() public view returns (uint256) {
        return balances[msg.sender];
    }
// ฝาก
    function deposit() public payable {
        balances[msg.sender] += msg.value;
    }
// ถอน
    function withdraw(uint256 _amount) public {
        require(balances[msg.sender] >= _amount, "Insufficient balance");   
        balances[msg.sender] -= _amount;

        (bool success, ) = msg.sender.call{value: _amount}("");
        require(success, "Transfer failed");
    } 

}