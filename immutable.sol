//SPDX-License-Identifier: Unlicense
pragma solidity <=0.8.9 >=0.8.0; 

contract Immutable{
    uint public immutable a;

    constructor(uint _a){
        a = _a;
    }

    // function setVal(uint _b)public{
    //     a = _b;
    // }
}

// 134320
// 116165

// state vars which we only want to read not update 
// not in constructor we can update 
