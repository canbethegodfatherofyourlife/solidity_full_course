//SPDX-License-Identifier: Unlicense 

pragma solidity <= 0.8.9 >=0.8.0;  


// storage -> state vars | on blockchain | costs gas 
// memory -> while a func is called | stack,RAM | local vars 
// calldata -> function args | immutable | external functions , dynamic params | RAM,stack 
// costs less than memory

contract Sto{
    uint[] public arr;

    function addEle() public{
        arr.push(1);
        arr.push(2);

        // uint[] storage sto = arr;
        // sto[0] = 3;

        uint[] memory sto = arr;
        sto[0] = 3;
    }

    function add(string calldata _a)external pure returns(string memory){
        _a = 'Ram';
        return _a;
    }
}

// User Ram -> contract A -> contract B -> contract D
// tx.origin , msg.sender

// msg.value -> amount u sent to the contract by the user 
