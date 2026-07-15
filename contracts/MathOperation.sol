// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;
contract MathOperation {
    uint8 public  balance ;

    constructor(){
    }

    function decrease() public {
        balance--;
    }
    
    function increase () public {
        balance++;    
    }
}