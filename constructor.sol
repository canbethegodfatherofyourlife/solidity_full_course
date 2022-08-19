//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0;  

// executed only once when we deploy the smart contract 
// put together the initialization logic 

contract Eth{

    address public owner;
    uint public age;

    constructor(uint _age,address _addr){
        owner = _addr;
        age = _age;
    }
}
