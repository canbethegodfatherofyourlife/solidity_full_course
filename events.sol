//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0; 

// the data that we don't want to change -> just want be there on the blockchain 
// cost effective than having state vars and also, easily searchable than storage vars
// found in transaction logs 

contract Events{

    event storedNumber(uint indexed prevNum,uint indexed newNum,uint addedNum,address sender);

    // indexed -> topics -> searchable params 

    uint public favNum;

    function store(uint _favNum)public{
        emit storedNumber(favNum,_favNum + favNum,_favNum,msg.sender);
        favNum = _favNum + favNum;

    }

}

// test your smart contracts for special variable 
// listen to events to change a frontend component 
