//SPDX-License-Identifier: Unlicense
pragma solidity <=0.8.9 >=0.8.0;   

// An interface allows you to talk to another contract on the blockchain

// cannot have any functions implemented
// can inherit from other interfaces
// all declared functions must be external
// cannot declare a constructor
// cannot declare state variables


interface Num{
    function setVal(uint _num1,uint _num2)external;
    function add() external view returns(uint);
}

contract A{
    uint private a;
    uint private b;

    function setVal(uint _num1,uint _num2)public{
        a = _num1;
        b = _num2;
    }

    function add() public view returns(uint){
        return a + b;
    }

}
