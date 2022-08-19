//SPDX-License-Identifier: Unlicense
pragma solidity <=0.8.9 >=0.8.0; 

contract A{

    uint public a;
    constructor(uint _a){
        a = _a;
    }
}

contract B{

    uint public b;
    constructor(uint _b){
        b = _b;
    }
}

contract C is A,B{
    constructor(uint _a,uint _b) A(_a) B(_b){}

    function add() public view returns(uint){
        return a+b;
    }
}

contract D is A(5),B(6){
    

    function add() public view returns(uint){
        return a+b;
    }
}

contract E is A(2),B{
    
    constructor(uint _b) B(_b){}

    function add() public view returns(uint){
        return a+b;
    }
}
